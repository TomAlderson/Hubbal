class FrontendController < ApplicationController

	skip_before_action :require_user

	def index
		render :layout => "frontend"
	end

	def about
		render :layout => "frontend"
	end

	def history
		render :layout => "frontend"
	end

	def location
		render :layout => "frontend"
	end

	def support
		render :layout => "frontend"
	end

end
