class MovieSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :director, :writer, :cinematographer,
             :music, :img_url
end
