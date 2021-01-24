class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    
    if @user.save
      redirect_to users_new_path
    else
      render :new
    end
  end
end
