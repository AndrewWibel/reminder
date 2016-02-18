require 'rufus-scheduler'
class TasksController < ApplicationController
		@scheduler = Rufus::Scheduler.new
	def every_15mins
		@scheduler.every('15m') do
		puts "every 15mins"
	end

	def every_30mins
		@scheduler.every('30m') do
		puts "every 30mins"
	end

	def every_hour
		@scheduler.every('1h') do
		puts "every hour"
	end

	def every_3hours
		@scheduler.every('3h') do
		puts "every 3 hours"
	end

	def in_5mins
		@scheduler.in('5m') do
		puts "5 mins have passed"
	end

	def in_10mins
		@scheduler.in('10m') do
		puts "10 mins have passed"
	end

	def in_15mins
		@scheduler.in('15m') do
		puts "15 mins have passed"
	end

	def in_30mins
		@scheduler.in('30m') do
		puts "30 mins have passed"
	end

	def in_1hour
		@scheduler.in('1h') do
		puts "1 hour has passed"
	end

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

		Task.create(name:params[:name], freq: convertto[params[:frequency]], user: current_user)
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
