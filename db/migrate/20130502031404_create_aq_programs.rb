class CreateAqPrograms < ActiveRecord::Migration
  def change
    create_table :aq_programs do |t|
      t.string :name
      t.integer :aq_type_id
      t.text :description
      t.string :public
      t.string :locale
      t.datetime :date_of_creation
      t.timestamps
    end
  end
end
