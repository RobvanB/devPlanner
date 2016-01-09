require 'rails_helper'

RSpec.describe "project_statuses/index", type: :view do
  before(:each) do
    assign(:project_statuses, [
      Status.create!(
        :name => "Name"
      ),
      Status.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of project_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
