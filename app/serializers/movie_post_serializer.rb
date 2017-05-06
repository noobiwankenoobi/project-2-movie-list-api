class MoviePostSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :comment
end
