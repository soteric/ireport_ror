class CreateSfprojects < ActiveRecord::Migration
  def self.up
    create_table :sfprojects do |t|
      t.string :name
      t.string :fullname
      t.integer :release_id
      t.string :scope_id
      t.integer :module_id

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :sfprojects
  end
end
