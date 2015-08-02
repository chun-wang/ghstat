class CreatePullRequests < ActiveRecord::Migration
  def change
    create_table :pull_requests do |t|
      t.integer :request_id
      t.integer :request_number
      t.string :title
      t.text :content
      t.string :url
      t.string :repo
      t.string :state
      t.string :status
      t.string :creator
      t.datetime :create_date
      t.datetime :update_date
      t.datetime :closed_date
      t.datetime :merge_date
      t.datetime :merged_by
      t.datetime :closed_by

      t.timestamps null: false
    end
  end
end
