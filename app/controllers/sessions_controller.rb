class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.authentication(params[:session][:login], params[:session][:password])
		print "+++++++++++++++++++++++++++++++++++"
		print params[:login]
		print params[:password]
		if @user
			session[:user_id] = @user.id
			flash[:notice] = "Welcome #{@user.login}!"
			redirect_to sfpillars_path
		else
			flash[:notice] = "User or password is not correct."
			redirect_to new_session_path
		end
	end
end
