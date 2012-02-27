class StaticPagesController < ApplicationController
  def home
	  @essay = current_user.essays.build if signed_in?
  end

  def help
  end

  def about
  end

end
