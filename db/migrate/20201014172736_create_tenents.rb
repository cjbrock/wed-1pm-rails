class CreateTenents < ActiveRecord::Migration[6.0]
  def change
    create_table :tenents do |t|
      t.string :name
      t.integer :rent
      t.integer :apt_number
    end
  end
end
