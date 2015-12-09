class AddAirDateToAnimes < ActiveRecord::Migration
  def change
    change_table :animes do |t|
      t.string :air_date
    end
  end
end
