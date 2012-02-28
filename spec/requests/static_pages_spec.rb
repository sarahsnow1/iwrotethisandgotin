require 'spec_helper'

describe "Static pages" do

	subject { page }

	describe "Home page" do

		describe "for signed-in users" do
			let(:user) { FactoryGirl.create(:user) }
			before do
				FactoryGirl.create(:essay, user: user, content: "blah blah blah")
				FactoryGirl.create(:essay, user: user, content: "another blah blah")
				sign_in(user)
				visit root_path
			end

			it "should render the user's feed" do
				user.feed.each do |item|
					user.feed.each do |item|
						page.should have_selector("tr##{item.id}", text: item.content)
					end
				end
			end
		end
	end
end
