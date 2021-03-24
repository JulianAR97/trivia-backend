class ScoresController < ApplicationController
  def index
    # Converts 'video-games' to 'Video Games' and 't-v' to 'T.V.'
    category_name = Score.slug_to_name(score_params[:category])
    @scores = Category.find_by(name: category_name).scores.limit(10)
    render json: @scores, only: [:name, :count, :category_id]
  end

  def create
    Score.create({
      name: score_params[:name],
      count: score_params[:count],
      category: Category.find_by(name: score_params[:category])
    })
  end


  private

  def score_params
    params.permit([:name, :count, :category])
  end
end
