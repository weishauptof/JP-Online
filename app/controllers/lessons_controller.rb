class LessonsController < ApplicationController
  before_action :authenticate_user
  before_action :forbid_only_students, {only: [:index, :new, :create, :edit, :update]}
  before_action :forbid_booked_lesson, {only: [:trial_booking, :trial_booked, :regular_booking, :regular_booked]}

  def about
  end

  def index
    @lessons = Lesson.all
  end


  def show_trial
    @lessons = Lesson.all
  end

  def trial_booking
  end

  def trial_booked
    @lesson.user_name = @current_user.name
    @lesson.user_email = @current_user.email
    @lesson.course = "trial"
    if @lesson.save
      flash[:notice] = "Successfully booking!!"
      redirect_to("/lessons/trial")
    else
      render("lessons/trial_booking")
    end
  end

  def show_regular
    @lessons = Lesson.all
  end

  def regular_booking
  end

  def regular_booked
    @lesson.user_name = @current_user.name
    @lesson.user_email = @current_user.email
    @lesson.course = "regular"
    if @lesson.save
      flash[:notice] = "Successfully booking!!"
      redirect_to("/lessons/regular")
    else
      render("lessons/regular_booking")
    end
  end

end
