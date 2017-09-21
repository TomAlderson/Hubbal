class SessionsController < ApplicationController

	skip_before_filter :require_user, only: [:new,:create]

	def new
		render :layout => "admin_lte_2_login"
	end

	def create
  		@user = User.find_by_username(params[:session][:username])
  		if @user && @user.authenticate(params[:session][:password])
    		session[:user_id] = @user.id
        ::LoginActivity.create(:ip=>request.remote_ip,:person_id=>@user.id,:time=>Time.now)
    		redirect_to '/dashboard'
  		else
        flash[:notice] = "Incorrect username/password."
    		redirect_to '/login'
  		end 
	end

	def destroy 
  		session[:user_id] = nil 
  		redirect_to '/login' 
	end
end
