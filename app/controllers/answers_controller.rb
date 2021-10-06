class AnswersController < ApplicationController

  def show
    @answer = Answer.find(params[:id])
    @offset = params[:offset]
    @game   = Game.find(params[:game])
    @game.increment!(:score) if @answer.value

    return unless @game.questions.size == @offset.to_i

    render 'game_over'
  end
end
