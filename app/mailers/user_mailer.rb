class UserMailer < ActionMailer::Base
  default from: "noreply@compasapp.com"

  # Registration Welcome Email
  def welcome_email(user)
  	@user = user
  	@login = 'http://beta.compasapp.com/auth/login'
  	mail(to: @user.email, from: 'noreply@compasapp.com', subject: 'Welcome to Compas!')
  end

end
