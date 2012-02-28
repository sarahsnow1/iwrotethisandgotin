class EssaysController < ApplicationController
	before_filter :signed_in_user

	def create
		@essay = current_user.essays.build(params[:essay])
		if @essay.save
			flash[:success] = "Essay created!"
			redirect_to root_path
		else
			@feed_items = []
			render 'static_pages/home'
		end
	end

	def destroy

	end
end
