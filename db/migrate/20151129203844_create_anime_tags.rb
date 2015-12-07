class CreateAnimeTags < ActiveRecord::Migration
  def change
    create_table :anime_tags do |t|

      t.integer :anime_id
      t.integer :tag_id

      t.timestamps null: false
    end

    add_foreign_key :anime_tags, :animes
    add_foreign_key :anime_tags, :tags
  end
end
