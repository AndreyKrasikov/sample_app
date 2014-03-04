require 'spec_helper'

describe "Static page" do

  describe "Home page" do

    it "should have the content h1 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have title" do
      visit root_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App')
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content h1 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have title 'Help'" do
      visit help_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "About Us page" do

    it "should have the content h1 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "shuold have title 'About Us'" do
      visit about_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | About Us')
    end
  end

  describe "Contact page" do

    it "should have content h1 'Contact Us'" do
      visit contact_path
      expect(page).to have_content('Contact Us')
    end

    it "should have title 'Contact Us'" do
      visit contact_path
      expect(page).to have_title('Contact Us')
    end
  end
end
