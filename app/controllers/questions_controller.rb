class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    if @ask == 'I am going to work' || "I'm going to work"
      @answer = 'Great!'
    elsif @ask.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
