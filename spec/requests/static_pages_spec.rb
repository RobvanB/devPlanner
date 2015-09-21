require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { expect(page).to have_selector('h1',    text: 'Welcome to Dev Planner') }
    it { expect(page).to have_title(spec_full_title('')) }
    it { expect(page).to_not have_title('| Home') }
end

  describe "Help Page" do
    before { visit help_path }
    it { expect(page).to have_selector('h1', :text => 'Dev Planner') }
    it { expect(page).to have_title(spec_full_title('Help')) }
  end

  describe "About Page" do
    before { visit about_path }
    it { expect(page).to have_selector('h1', :text => 'Dev Planner') }
    it { expect(page).to have_title(spec_full_title('About')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { expect(page).to have_selector('h1', :text => 'Dev Planner') }
    it { expect(page).to have_title(spec_full_title('Contact')) }
  end

end
