require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'First app'" do
      visit '/static_pages/home'
      page.should have_content('Haggendazz')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Haggendazz')
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end
  
  describe "Help Page" do
    it "should have the content 'HELP'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    
  end
  
  describe "About Us" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end
end