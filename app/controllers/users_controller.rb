class UsersController < ApplicationController
  
  def new
    @user = User.new(params[:user])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "User created successfully."
    else
      flash[:notice] = "Error occur while creating user."
    end
    redirect_to root_path
  end
end
