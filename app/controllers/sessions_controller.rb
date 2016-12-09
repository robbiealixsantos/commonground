class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
			redirect_to '/'
		else
			flash[:alert] = "Please type valid email and password."
			redirect_to '/login'
		end
  end

  def destroy
  	session[:user_id] = nil
		redirect_to root_path
  end
end
