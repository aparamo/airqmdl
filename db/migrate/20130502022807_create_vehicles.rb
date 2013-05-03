class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :type_id
      t.text :description
      t.string :capacity
      t.string :efficiency
      t.string :emissions
      t.string :public
      t.string :registration_state
      t.datetime :registration_year

      t.timestamps
    end
  end
end
