require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "Home Page" do
    it "should have the h1 'Dev Planner'" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', :text => 'Dev Planner')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Dev Planner | Home")
    end
  end

  describe "Help Page" do
    it "should have the h1 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_selector('h1', :text => 'Dev Planner')
    end

    it "should have the title 'Help' " do
      visit '/static_pages/help'
      expect(page).to have_title("Dev Planner | Help")
    end
  end

  describe "About Page" do
    it "should have the h1 'About' " do
      visit '/static_pages/about'
      expect(page).to have_selector('h1', :text => 'Dev Planner')
    end
    it "should have the title 'About' " do
      visit '/static_pages/about'
      expect(page).to have_title("Dev Planner | About")
    end
  end

end
