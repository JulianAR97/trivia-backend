class ScoresController < ApplicationController
  def index
    @scores = Score.get_top_ten_scores
    render json: @scores, only: [:name, :count]
  end
end
