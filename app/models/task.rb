
class Task < ActiveRecord::Base
	#relationships
	belongs_to :user

	require 'rufus-scheduler'

	@@scheduler = Rufus::Scheduler.new

	def self.every_15mins(task, user)
		@task = task
		@@scheduler.every('15m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(@task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.every_30mins(task, user)
		# @task = task
		@@scheduler.every('30m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.every_hour(task, user)
		# @task = task
		@@scheduler.every('20s' , :tag => task) do
			# puts ":tag" "ALSFJALKFJDKLJFSDLJF"

		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.every_3hours(task, user)
		# @task = task
		@@scheduler.every('3h' , :tag => task) do
		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.in_5mins(task, user)
		# @task = task
<<<<<<< HEAD
		$scheduler.in('3m' , :tag => task) do
=======
		@@scheduler.in('5m' , :tag => task) do
>>>>>>> andrew
		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.in_10mins(task, user)
		# @task = task
		@@scheduler.in('10m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.in_15mins(task, user)
		# @task = task
		@@scheduler.in('15m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.in_30mins(task, user)
		# @task = task
		@@scheduler.in('30m' , :tag => task) do
		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.in_1hour(task, user)
		# @task = task
		@@scheduler.in('1h' , :tag => task) do
		@user = user
		ReminderMailer.task_email(task, @user.email).deliver
		message = task
		number = @user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "++18316099409",
													:body => "#{message}"})
		end
	end

	def self.unschedule(task)
		@@scheduler.jobs(:tag => task).each do |mess|
		 	if mess.tags.include?(task)
		 		mess.unschedule
		 	end
		end
	end


end
