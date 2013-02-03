require 'spec_helper'
require 'application_helper'

describe "Static Pages" do
  
  describe "Home page" do
    it "should have the content 'Haggendazz'" do
      visit root_path
      page.should have_content('Haggendazz')
    end
    
    it "should have the base title" do
      visit root_path
      page.should have_selector('h1', :text => 'Haggendazz')
    end
    
  end
  
  describe "Help Page" do
    it "should have the content 'HELP'" do
      visit help_path
      page.should have_content('Help')
    end
    
  end
  
  describe "About Us" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_content('About Us')
    end
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => "Haggendazz | Contact")
    end
    
  end
end