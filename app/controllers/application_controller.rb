class ApplicationController < ActionController::Base

	before_action :require_user, :install_ok

	helper_method :current_user 

	def current_user 
	  @current_user ||= User.find(session[:user_id]) if session[:user_id] 
	end
	  
	def require_user 
	  redirect_to '/login' unless current_user 
	end

	def install_ok
		if User.count <= 0
			redirect_to '/install'
		end
	end

  layout 'admin_lte_2'

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
