class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.belongs_to :tenent, null: false, foreign_key: true
      t.belongs_to :landlord, null: false, foreign_key: true
    end
  end
end
