class TeachersController < ApplicationController
  before_action :authenticate_user, {only: [:index]} 


#  def index
#    @users = User.all
#  end

#  def login_form
#  end

#  def login
#    @teacher = User.find_by(
#      teacher_id: params[:teacher_id],
#      password: params[:password]
#      )
#    if @teacher
#      session[:user_id] = @User.id
#      flash[:notice] = "Successful login"
#      redirect_to("/teachers/users/index")
#    else
#      @error_message = "ID or Password is invalid"
#      @teacher_id = params[:teacher_id]
#      @password = params[:password]
#      render("teachers/login_form")
#    end
#  end

  

end
