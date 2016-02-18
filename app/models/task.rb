class Task < ActiveRecord::Base
	#relationships
	belongs_to :user
	

	# def start_tasks
	# 	scheduler.every("10s") do
	# 	puts "Scheduler invoked"
	# end


end
