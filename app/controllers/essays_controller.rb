class EssaysController < ApplicationController
	before_filter :signed_in_user, only: [:create, :destroy]
	before_filter :correct_user, only: :destroy

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
		@essay.destroy
		redirect_back_or root_path
	end

	private

		def correct_user
			@essay = current_user.essays.find_by_id(params[:id])
			redirect_to root_path if @essay.nil?
		end

end
