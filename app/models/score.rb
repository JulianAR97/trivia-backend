class Score < ApplicationRecord
  scope :get_top_ten_scores, -> { order('count desc').limit(10) }
end
