class GameController < ApplicationController
  def start_game
    game = Game.create(questions: Question.all.sample(5)) # Aca podriamos configurar cuantas preguntas se hacen en un juego
    next_round(game_id: game.id, offset: 0)
  end

  def next_round(game_id: params[:game], offset: params[:offset])
    game = Game.find(game_id)

    render 'question', locals: { game: game, offset: offset.to_i }
  end
end
