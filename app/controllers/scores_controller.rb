class ScoresController < ApplicationController

  # GET /scores or /scores.json
  def index
    @scores = Score.order(score: :desc).first(10)
  end
end
