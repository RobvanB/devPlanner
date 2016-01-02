require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :project_id => 1,
        :user_id => 2,
        :name => "Name"
      ),
      Task.create!(
        :project_id => 1,
        :user_id => 2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
