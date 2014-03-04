require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact'))}
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About') }
    it { should have_title(full_title('About'))}
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))
    click_link "Sign Up"
    expect(page).to have_title(full_title('Sign Up'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Sample app"
    click_link "Home"

  end
end