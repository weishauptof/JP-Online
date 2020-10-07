class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
      @current_user = User.find_by(id: session[:user_id])
    end

    def authenticate_user
      if @current_user == nil
        flash[:notice] = "You need to login."
        redirect_to("/login")
      end
    end

    def forbid_only_students
      if @current_user
        flash[:notice] = "You've already done login."
        redirect_to("/lessons/about")
      end
    end

    def ensure_correct_user
      if @current_user.id != params[:id].to_i
        flash[:notice] = "You are not allowed to acces this page."
        redirect_to("/users/#{@current_user.id}/edit")
      end
    end

    def forbid_booked_lesson
      @lesson = Lesson.find_by(id: params[:id])
      if @lesson.user_name != nil
        flash[:notice] = "This lesson is already booked"
        redirect_to("/lessons/about")
      end
    end

    around_action :user_time_zone, if: :set_current_user
    private
    
    def user_time_zone(&block)
      Time.use_zone( set_current_user.time_zone, &block)
    end
 
end
