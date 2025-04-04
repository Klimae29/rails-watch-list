class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  #validates :movie_id, presence: true
  #validates :list_id, presence: true
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :list_id, :scope => [:movie_id]
end
