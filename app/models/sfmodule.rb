class Sfmodule < ActiveRecord::Base
	belongs_to :sfpillar
	has_many :sfprojects
end
