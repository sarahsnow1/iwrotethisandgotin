require 'spec_helper'

describe Essay do

	let(:user) { FactoryGirl.create(:user) }
	before { @essay = user.essays.build(content: "The essay content", title: "Peace") }

	subject { @essay }

	it { should respond_to(:content) }
	it { should respond_to(:user_id) }
	it { should respond_to(:user) }
	its(:user) { should == user }

	it { should be_valid }

	describe "when user_id is not present" do
		before { @essay.user_id = nil }
		it { should_not be_valid }
	end
end
