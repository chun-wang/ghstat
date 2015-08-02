class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :comment_id
      t.string :sha
      t.text :content
      t.string :url
      t.string :creator
      t.datetime :create_date
      t.datetime :update_date

      t.timestamps null: false
    end
  end
end
