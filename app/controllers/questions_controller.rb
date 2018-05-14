class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:user_type]
    if @question == "I am going to work"
      @answer =  "Great!"
    elsif @question.slice(@question.length - 1) == "?"
      @answer =  "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
