class StaticPagesController < ApplicationController
  def home
	  if signed_in?
	  	@essay = current_user.essays.build
		@feed_items = current_user.feed.paginate(page: params[:page])
	  end
  end

  def help
  end

  def about
  end

end
