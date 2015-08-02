class CreateOrganizationUsers < ActiveRecord::Migration
  def change
    create_table :organization_users do |t|
      t.string :name
      t.string :user
      t.string :role

      t.timestamps null: false
    end
  end
end
