class AddColumnPillarIdToSfmodules < ActiveRecord::Migration
  def self.up
  	add_column :sfmodules, :pillar_id, :integer
  end

  def self.down
  	remove_column :sfmodules, :pillar_id
  end
end
