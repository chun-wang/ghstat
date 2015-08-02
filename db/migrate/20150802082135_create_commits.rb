class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.string :sha
      t.string :message
      t.string :url
      t.string :author
      t.datetime :commit_date

      t.timestamps null: false
    end
  end
end
