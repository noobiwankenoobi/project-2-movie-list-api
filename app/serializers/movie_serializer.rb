class MovieSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :title_imdb_url, :title_rotten_url,
             :director, :director_imdb_url, :writer, :writer_imdb_url,
             :cinematographer, :cinematographer_imdb_url, :music,
             :music_imdb_url, :img_url
end
