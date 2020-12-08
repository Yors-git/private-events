class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user
        session[:user_id] = @user.id
        redirect_to '/welcome'
    else
        redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  def login
  end

  def welcome
  end
end
