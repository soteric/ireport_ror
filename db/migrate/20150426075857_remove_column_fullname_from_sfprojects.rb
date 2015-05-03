class RemoveColumnFullnameFromSfprojects < ActiveRecord::Migration
  def self.up
  	remove_column :sfprojects, :fullname
  end

  def self.down
  	add_column :sfprojects, :fullname, :string
  end
end
