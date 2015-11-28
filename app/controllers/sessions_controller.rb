class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = "Nice Job, You're up and running!"
      redirect_to root_path
    else
      flash[:notice] = "Invalid login. Please try again"
      render :new
    end
  end
end
