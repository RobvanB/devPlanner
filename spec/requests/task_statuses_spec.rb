require 'rails_helper'

RSpec.describe "TaskStatuses", type: :request do
  describe "GET /task_statuses" do
    it "works! (now write some real specs)" do
      get task_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
