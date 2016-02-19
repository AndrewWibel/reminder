class ReminderMailer < ApplicationMailer

	def task_email(task)
		@task = task
		@url = '/'
		mail(to: 'andrew.wibel@gmail.com', subject: @task)
	end
end
