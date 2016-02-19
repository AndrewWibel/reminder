class ReminderMailer < ApplicationMailer
	default :from => "jiminsphess@gmail.com"
	def task_email(task,user)
		@task = Task.find_by(name: task).name
		@url = '/'
		mail(to: user, subject: @task)
	end
end
