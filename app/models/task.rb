class Task < ActiveRecord::Base
	#relationships
	belongs_to :user

	def self.every_15mins(task, user)
		$scheduler.every('15m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.every_30mins(task, user)
		$scheduler.every('30m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.every_hour(task, user)
		$scheduler.every('2m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.every_3hours(task, user)
		$scheduler.every('3h' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.in_5mins(task, user)
		@task = task
		$scheduler.in('5m', :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.in_10mins(task, user)
		$scheduler.in('10m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.in_15mins(task, user)
		$scheduler.in('15m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.in_30mins(task, user)
		$scheduler.in('30m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

	def self.in_1hour(task, user)
		$scheduler.in('1h' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		end
	end

end
