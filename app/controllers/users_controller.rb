class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.notice = "User #{@user[:username]} Created!"
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      render :new
    end
  end

  def show
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:id, :username, :email)
  end
end
