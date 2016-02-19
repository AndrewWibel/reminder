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
		if params[:freq] = 'in_5mins'
			Task.in_5mins(params[:name])				
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

		redirect_to :back 
	end
end
