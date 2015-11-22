require 'rails_helper'

RSpec.describe "Pms", type: :request do
  describe "GET /pms" do
    it "works! (now write some real specs)" do
      get pms_path
      expect(response).to have_http_status(200)
    end
  end
end
