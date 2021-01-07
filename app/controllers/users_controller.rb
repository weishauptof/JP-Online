class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:logout, :edit, :update]}
  before_action :ensure_correct_user, {only: [:edit, :update]}

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.password == @user.password_confirmation && @user.save
      session[:user_id] = @user.id
      flash[:notice] = "success create new account and Successful login"
      NoticeMailer.greeting(@user).deliver
      redirect_to("/lessons/about")
    elsif @user.password != @user.password_confirmation 
      flash[:notice] = "don't match password"
      render("users/new")
    else
      flash[:notice] = "please fill blank"
      render("users/new")
    end 
  end

  def login_form
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Successful login"
      redirect_to("/lessons/about")
    else
      @error_message = "JP Online account or Password is invalid"
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logout complete"
    redirect_to("/login")
  end

  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    if @user = User.update(user_params_update)
      flash[:notice] = "Successfully updating your information"
      redirect_to("/users/#{@current_user.id}/edit")
    else
      render("users/edit")
    end
  end

  private
 
#ストロングパラメーター
    def user_params
      params.require(:user).permit(:name, :email, :instagram, :country, :time_zone, :password, :password_confirmation)
    end
    
    def user_params_update
      params.require(:user).permit(:name, :email, :instagram, :country, :time_zone)
    end
end
