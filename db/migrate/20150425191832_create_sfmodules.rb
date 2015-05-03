class CreateSfmodules < ActiveRecord::Migration
  def self.up
    create_table :sfmodules do |t|
      t.string :name

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :sfmodules
  end
end
