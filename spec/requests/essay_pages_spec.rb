require 'spec_helper'

describe "EssayPages" do

	subject { page }

	let(:user) { FactoryGirl.create(:user) }
	before { sign_in(user) }

	describe "essay creation" do
		before { visit root_path }

		describe "with invalid information" do

			it "should not create an essay" do
				expect { click_button "Submit" }.should_not change(Essay, :count)
			end

			describe "error messages" do
				let(:error) { '1 error prohibited this essay from being saved' }
				before { click_button "Submit" }
				it { should have_content(error) }
			end
		end

		describe "with valid information" do

			before { fill_in 'essay_content', with: "Lorem ipsum" }
			it "should create an essay" do
				expect { click_button "Submit" }.should change(Essay, :count).by(1)
			end
		end
	end

	describe "essay destruction" do
		before { FactoryGirl.create(:essay, user: user) }

		describe "as corret user" do
			before { visit root_path }

			it "should delete a micropost" do
				expect { click_link "delete" }.should change(Micropost, :count).by(-1)
			end
		end
	end
end
