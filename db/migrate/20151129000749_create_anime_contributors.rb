class CreateAnimeContributors < ActiveRecord::Migration
  def change
    create_table :anime_contributors do |t|

      t.integer :contributor_id
      t.integer :anime_id

      t.timestamps null: false
    end

    add_foreign_key :anime_contributors, :contributors
    add_foreign_key :anime_contributors, :animes
  end
end
