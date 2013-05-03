class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :name
      t.boolean :winner

      t.timestamps
    end
  end
end
