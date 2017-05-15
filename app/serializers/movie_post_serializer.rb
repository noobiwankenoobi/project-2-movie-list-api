class MoviePostSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :user_id, :parent_movie_post_id, :comment
end
