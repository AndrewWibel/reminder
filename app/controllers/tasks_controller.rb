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

		if params[:freq] == 'in_5mins'
			Task.in_5mins(params[:name])
		elsif params[:freq] == 'in_10mins'
			Task.in_10mins(params[:name])
		elsif params[:freq] == 'in_15mins'
			Task.in_15mins(params[:name])
		elsif params[:freq] == 'in_30mins'
			Task.in_30mins(params[:name])
		elsif params[:freq] == 'in_1hour'
			Task.in_1hour(params[:name])
		elsif params[:freq] == 'every_15mins'
			Task.every_15mins(params[:name])
		elsif params[:freq] == 'every_30mins'
			Task.every_30mins(params[:name])
		elsif params[:freq] == 'every_hour'
			Task.every_hour(params[:name])
		else 
			Task.every_3hours(params[:name])
												
		end

		Task.create(name:params[:name], freq:params[:freq], user: current_user)
		redirect_to :back
	end

	# def update 
	# 	redirect_to :back
	# end

	def destroy
		Task.destroy(params[:id])
		#need to learn how to destroy it from scheduler
		 $scheduler.jobs(:tag => params[:to_p]).each do |mess|
		 	puts params[:to_p], 'PARAMSSS'
		 	if mess.tags.include?(params[:to_p])
		 		mess.unschedule
		 	end
		 end
		redirect_to :back 
	end
end
