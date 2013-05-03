class CreateFinanciations < ActiveRecord::Migration
  def change
    create_table :financiations do |t|
      t.string :name
      t.integer :aq_program_id
      t.integer :organization_id
      t.text :description
      t.string :financiation_type
      t.timestamps
    end
  end
end
