class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #

  default from: "kkjason.cheung@gmail.com"


  # by default, the function does not have access to params
  # that are passed via URL, so have to pass in user as an
  # argument 
  def signup_confirmation(user)
  	# creating the instance variable so we have access to it
  	# in the view templates
  	
    @user = user
    @greeting = "Hi"

    
    # important that the function ends with mail to:

    mail to: user.email, subject: "Sign Up Confirmation"
  end
end
