require 'rails_helper'

RSpec.describe "UserPages", type: :request do

  #subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { expect(page).to have_selector('h1',     text: 'Sign up') }
    it { expect(page).to have_title(spec_full_title('Sign up')) }
  end
  #describe "GET /user_pages" do
  #  it "works! (now write some real specs)" do
  ##    get user_pages_index_path
  #    expect(response).to have_http_status(200)
  #  end
  #end
end
