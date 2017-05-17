class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.references :user, foreign_key: true, null: false

      t.string :title, null: false
      t.string :title_imdb_url, null: false
      t.string :title_rotten_url

      t.string :director, null: false
      t.string :director_imdb_url

      t.string :writer, null: false
      t.string :writer_imdb_url

      t.string :cinematographer, null: false
      t.string :cinematographer_imdb_url

      t.string :music, null: false
      t.string :music_imdb_url

      t.string :img_url, null: false

      t.timestamps
    end
  end
end
