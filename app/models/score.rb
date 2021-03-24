class Score < ApplicationRecord
  scope :get_top_ten_scores, -> { order('count desc').limit(10) }

  belongs_to :category

  def self.slug_to_name(slug)
    slug == 't-v' ? 'T.V.' : slug.split('-').join(' ').titlecase
  end
end
