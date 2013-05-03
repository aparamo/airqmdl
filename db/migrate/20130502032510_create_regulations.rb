class CreateRegulations < ActiveRecord::Migration
  def change
    create_table :regulations do |t|
      t.string :name
      t.integer :aq_program_id
      t.integer :vehicle_id
      t.text :description
      t.string :regulation_type

      t.timestamps
    end
  end
end
