class TasksController < ApplicationController
	
	

	def create 
		#create a dictionary and convert back to nice one 
		convertto = {
			"10m" => "Every 10 minutes",
			"30m" => "Every 30 minutes",
			"1h" => "Every hour",
			"1d" => "Every day",
			"1w" => "Every week",
			"1M" => "Every month",
			"1y" => "Every year"
		}

		Task.create(name:params[:name], freq:params[:freq], user: current_user)

		if params[:freq] == 'in_5mins'

			Task.in_5mins(params[:name], current_user)
		elsif params[:freq] == 'in_10mins'
			Task.in_10mins(params[:name], current_user)
		elsif params[:freq] == 'in_15mins'
			Task.in_15mins(params[:name], current_user)
		elsif params[:freq] == 'in_30mins'
			Task.in_30mins(params[:name], current_user)
		elsif params[:freq] == 'in_1hour'
			Task.in_1hour(params[:name], current_user)
		elsif params[:freq] == 'every_15mins'
			Task.every_15mins(params[:name], current_user)
		elsif params[:freq] == 'every_30mins'
			Task.every_30mins(params[:name], current_user)
		elsif params[:freq] == 'every_hour'
			Task.every_hour(params[:name], current_user)
		else 
			Task.every_3hours(params[:name], current_user)
												
		end

		# Task.create(name:params[:name], freq:params[:freq], user: current_user)
		redirect_to :back
	end

	# def update 
	# 	redirect_to :back
	# end

	def destroy
		Task.destroy(params[:id])
		#need to learn how to destroy it from scheduler
		 $scheduler.jobs(:tag => params[:to_p]).each do |mess|
		 	# puts params[:to_p], 'PARAMSSS'
		 	if mess.tags.include?(params[:to_p])
		 		mess.unschedule
		 	end
		 end
		redirect_to :back 
	end

	def send_sms
		message = params[:name]
		number = current_user.phone_number
		account_sid = 'AC1997b3f0c07e7f6e25a885b469f4fc08'
		auth_token = 'cecff1fd5f3af108e5e22c69f18b2f8f'

		@client = @client.account.messages.create({:to => '+1' + "#{number}",
													:from => "+18316099375",
													:body => "#{message}"})

	end
end

