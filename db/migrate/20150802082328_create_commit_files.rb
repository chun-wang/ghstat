class CreateCommitFiles < ActiveRecord::Migration
  def change
    create_table :commit_files do |t|
      t.string :sha
      t.string :filename
      t.integer :additions
      t.integer :deletions
      t.integer :changes
      t.string :status

      t.timestamps null: false
    end
  end
end
