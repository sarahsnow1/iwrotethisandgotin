class UsersController < ApplicationController

  def show
    @user = User.find_by_username(params[:id])
  end

  def new
    @user = User.create
  end
end
