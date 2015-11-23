class CreateContributors < ActiveRecord::Migration
  def change
    create_table :contributors do |t|
      t.string  :name
      t.integer :age
      t.string  :birthplace
      t.text    :trivia

      t.timestamps null: false
    end
  end
end
