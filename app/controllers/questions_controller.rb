class QuestionsController < ApplicationController
  def ask
  end

  def answer
    #params[: va chercher le name dans ask.html.erb]
    if params[:question] == "I am going to work"
      @answer = "Great!"
    #elsif params[:question][-1] == "?"
    elsif params[:question].include("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end