class CreateMoviePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_posts do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false
      t.string :director, null: false
      t.string :comment

      t.timestamps
    end
  end
end
