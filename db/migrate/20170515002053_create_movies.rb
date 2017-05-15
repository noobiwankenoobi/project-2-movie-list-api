class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.references :user, foreign_key: true, null: false
      t.string :title, null: false
      t.string :director, null: false
      t.string :writer, null: false
      t.string :cinematographer, null: false
      t.string :music, null: false
      t.string :img_url, null: false

      t.timestamps
    end
  end
end
