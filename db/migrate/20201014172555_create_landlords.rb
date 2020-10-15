class CreateLandlords < ActiveRecord::Migration[6.0]
  def change
    create_table :landlords do |t|
      t.string :name
      t.integer :number_building_owned
    end
  end
end
