class QuestionsController < ApplicationController
  def ask
    @question = params[:ask]
  end

  def answer
    @question = params[:answer]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.end_with? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end



  # get question from params and compute an instance variable @answer for the view to display



