class EventMailer < ApplicationMailer
	default from: 'happytribeteam@gmail.com'

	def modified_email(event)
		@event = event
		@email_list = []
		@event.arrangements.each do |arrangement|
			@email_list << arrangement.user.email
		end
		mail(to: @email_list, subject: "Your event, #{@event.name} has been updated")
	end

	def deleted_email(event)
		@event = event
		@email_list = []
		@event.arrangements.each do |arrangement|
			@email_list << arrangement.user.email
		end
		mail(to: @email_list, subject: "Your event, #{@event.name} has been deleted")
	end	
end
