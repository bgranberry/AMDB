class CreateAnimeGenres < ActiveRecord::Migration
  def change
    create_table :anime_genres do |t|

      t.integer :anime_id
      t.integer :genre_id

      t.timestamps null: false
    end
    add_foreign_key :anime_genres, :animes
    add_foreign_key :anime_genres, :genres
  end
end
