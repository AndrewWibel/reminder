class Task < ActiveRecord::Base
	#relationships
	belongs_to :user

	def self.every_15mins(task)
		$scheduler.every('5s' , :tag => task) do
		puts task
		end
	end

	def self.every_30mins(task)
		$scheduler.every('30m' , :tag => task) do
		puts task
		end
	end

	def self.every_hour(task)
		$scheduler.every('1s' , :tag => task) do
		puts task
		end
	end

	def self.every_3hours(task)
		$scheduler.every('3h' , :tag => task) do
		puts task
		end
	end

	def self.in_5mins(task)
		$scheduler.in('5s', :tag => task) do
			
			# respond_to do |format|

				# ReminderMailer.task_email(task).deliver_now
			# end

		end
	end

	def self.in_10mins(task)
		$scheduler.in('10m' , :tag => task) do
		puts task
		end
	end

	def self.in_15mins(task)
		$scheduler.in('15m' , :tag => task) do
		puts task
		end
	end

	def self.in_30mins(task)
		$scheduler.in('30m' , :tag => task) do
		puts task
		end
	end

	def self.in_1hour(task)
		$scheduler.in('1h' , :tag => task) do
		puts task
		end
	end

end
