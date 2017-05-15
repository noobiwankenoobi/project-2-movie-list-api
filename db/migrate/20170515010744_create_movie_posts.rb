class CreateMoviePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_posts do |t|
      t.references :user, foreign_key: true, null: false
      t.references :movie, foreign_key: true, null: false
      t.references :parent_movie_post
      t.text :comment, null: false

      t.timestamps
    end
  end
end
