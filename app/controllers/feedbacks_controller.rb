class FeedbacksController < ApplicationController

  def test
    @lesson = Lesson.find_by(id: params[:id])
    @feedbacks = Feedback.where(time: @lesson.start_time)
  end

  def answer
    @lesson = Lesson.find_by(id: params[:id])
    @feedbacks = Feedback.where(time: @lesson.start_time)

    @feedbacks.each do |feedback|
        feedback.a = params[:a].to_i
        feedback.save
        flash[:notice] = "Your answer is loarded"
    end

    redirect_to("/feedbacks/#{@current_user.id}/#{@lesson.id}/result")
  end

  def result
    @lesson = Lesson.find_by(id: params[:id])
    @feedbacks = Feedback.where(time: @lesson.start_time)
    @sum = 0

    @feedbacks.each do |feedback|
      if feedback.a == feedback.answer
        @score = feedback.score        
      else
        @score = 0
      end
      @sum = @sum + @score
    end
    
    @lesson.result = "N"

    if @sum >= 100
      @lesson.result = "A"
    elsif @sum < 100 && @sum > 0 
      @lesson.result = "B"
    else
      @lesson.result = "C"
    end

    @lesson.save
    
  end

end
