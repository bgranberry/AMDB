class AddRoleToAnimeContributors < ActiveRecord::Migration
  def change
    change_table :anime_contributors do |t|
      t.string :role
    end
  end
end
