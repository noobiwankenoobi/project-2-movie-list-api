class Movie < ApplicationRecord
  belongs_to :user
  has_many :movie_posts
end
