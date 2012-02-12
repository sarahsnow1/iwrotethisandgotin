require 'spec_helper'

describe "Sessions" do

  let(:base_title) { "I wrote this and got in"}
  
  describe "Login page" do
    
    it "should have the h1 'Login'" do
      visit '/sessions/login'
      page.should have_selector('h1', :text => 'Login')
    end


    it "should have the right title" do
      visit '/sessions/login'
      page.should have_selector('title',
                    :text => "#{base_title} | Login")
    end

  end

  describe "Signup page" do

    it "should have the h1 'Signup'" do
      visit '/sessions/signup'
      page.should have_selector('h1', :text => 'Signup')
    end

   it "should have the right title" do
     visit '/sessions/signup'
     page.should have_selector('title',
                    :text => "#{base_title} | Signup")
   end

  end


  describe "Logout page" do

    it "should have the h1 'Logout'" do
      visit '/sessions/logout'
      page.should have_selector('h1', :text => 'Logout')
    end

    it "should have the right title" do
      visit '/sessions/logout'
      page.should have_selector('title',
                    :text => "#{base_title} | Logout")
    end

  end

end
