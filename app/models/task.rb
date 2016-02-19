class Task < ActiveRecord::Base
	#relationships
	belongs_to :user
	

	# def start_tasks
	# 	scheduler.every("10s") do
	# 	puts "Scheduler invoked"
	# end
	# @scheduler = Rufus::Scheduler.new
	def self.every_15mins(task)
		$scheduler.every('15m') do
		puts task
		end
	end

	def self.every_30mins(task)
		$scheduler.every('30m') do
		puts task
		end
	end

	def self.every_hour(task)
		$scheduler.every('1h') do
		puts task
		end
	end

	def self.every_3hours(task)
		$scheduler.every('3h') do
		puts task
		end
	end

	def self.in_5mins(task)
		$scheduler.in('5s') do
		puts task
		end
	end

	def self.in_10mins(task)
		$scheduler.in('10m') do
		puts task
		end
	end

	def self.in_15mins(task)
		$scheduler.in('15m') do
		puts task
		end
	end

	def self.in_30mins(task)
		$scheduler.in('30m') do
		puts task
		end
	end

	def self.in_1hour(task)
		$scheduler.in('1h') do
		puts task
		end
	end

end
