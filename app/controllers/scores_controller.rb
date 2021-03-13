class ScoresController < ApplicationController
  def index
    @scores = Score.get_top_ten_scores
    render json: @scores, only: [:name, :count]
  end

  def create
    Score.create(score_params)
  end


  private

  def score_params
    params.require(:score).permit([:name, :count])
  end
end
