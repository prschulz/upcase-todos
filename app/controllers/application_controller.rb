class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception

  # def authenticate
  # 	if !signed_in?
  # 		redirect_to new_session_path
  # 	end
  # end
  #
  # def sign_in_as(email)
  # 	session[:current_email] = email
  # end
  #
  # def signed_in?
  # 	current_user.signed_in?
  # end
  #
  # def current_user
  # 	User.new(session[:current_email])
  # end

end
