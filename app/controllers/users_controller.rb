class UsersController < ApplicationController

  def show
    @user = User.find_by_username(params[:id])
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(params[:user])
    @user.save
  end
end
