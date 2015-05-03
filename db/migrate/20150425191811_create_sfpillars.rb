class CreateSfpillars < ActiveRecord::Migration
  def self.up
    create_table :sfpillars do |t|
      t.string :name

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :sfpillars
  end
end
