class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :organization_type
      t.integer :contact_id

      t.timestamps
    end
  end
end
