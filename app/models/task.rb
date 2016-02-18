class Task < ActiveRecord::Base
	#relationships
	belongs_to :user
	
	def self.every_2mins
		puts 'dsjfh'
	end
end
