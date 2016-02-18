require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton

scheduler.every('30s') do
	Task.every_2mins
end

# scheduler.every("1m") do
# 	puts "Scheduler invoked"
# end

# scheduler.every('2m') do
# 	puts '2 mins have passed'
# end

# scheduler.at '2016/2/18 11:19:30' do
# 	puts 'it is now 11:15:30'
# end