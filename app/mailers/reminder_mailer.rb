class ReminderMailer < ApplicationMailer
	default :from => "jiminsphess@gmail.com"
	def task_email(task,user)
		@task = task
		@url = '/'
		mail(to: user, subject: @task)
	end
end
