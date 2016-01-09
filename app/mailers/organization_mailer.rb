class OrganizationMailer < ApplicationMailer
	default from: 'happytribeteam@gmail.com'

	def welcome_email(organization)
		@organization = organization
		mail(to: @organization.email, subject: 'Welcome to HappyTribe')
	end
end
