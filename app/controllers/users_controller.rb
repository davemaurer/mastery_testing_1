class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Wonderful! Now you are in our database forever!"
      redirect_to links_path
    else
      flash[:alert] = "Uhoh, somthing went wrong. Please try again."
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
