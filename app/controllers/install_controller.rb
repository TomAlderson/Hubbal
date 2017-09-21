class InstallController < ApplicationController

	skip_before_action :require_user, :install_ok

	def index
		@user = User.new
		render :layout => "install"
	end

	def create
    params[:install][:username] = "#{rand(99).to_s}#{params[:install][:firstname].split(//).first}#{params[:install][:lastname].strip}#{rand(9).to_s}"
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to login_path, :flash => { success: @user.username+' was successfully created.' } }
      else
        format.html { render :new }
      end
    end

    @new_user = User.find_by(username: @user.username)
    Timetable.create(:user_id => @new_user.id)
  	end

  	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:install).permit(:firstname, :lastname, :username, :password, :email, :phone, :role, :room, :avatar)
    end

end
