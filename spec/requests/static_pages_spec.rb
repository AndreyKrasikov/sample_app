require 'spec_helper'

describe "Static page" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "About Us page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "shuold have title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
    end
  end

  describe "Contact page" do

    it "should have content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end

    it "should have title 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title('Contact Us')
    end
  end
end
