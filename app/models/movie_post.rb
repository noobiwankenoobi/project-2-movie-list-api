class MoviePost < ApplicationRecord
  has_many :sub_movie_posts, class_name: 'MoviePost',
                             foreign_key: 'parent_movie_post_id',
                             dependent: :destroy

  belongs_to :parent_movie_post, optional: true, class_name: 'MoviePost'

  belongs_to :movie
  belongs_to :user
end
