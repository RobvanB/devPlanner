require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :proj_id => "Proj",
        :proj_name => "Proj Name",
        :cust_id => 1
      ),
      Project.create!(
        :proj_id => "Proj",
        :proj_name => "Proj Name",
        :cust_id => 1
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Proj".to_s, :count => 2
    assert_select "tr>td", :text => "Proj Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
