class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to I wrote this and got in!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  def edit
	  @user = User.find(params[:id])
  end

  def update
	  @user = User.find(params[:id])
	  if @user.update_attributes(params[:user])
		  flash[:success] = "Profile updated"
		  redirect_to @user
	  else
		  render 'edit'
	  end
  end

end
