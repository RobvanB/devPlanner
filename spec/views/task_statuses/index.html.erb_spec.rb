require 'rails_helper'

RSpec.describe "task_statuses/index", type: :view do
  before(:each) do
    assign(:task_statuses, [
      TaskStatus.create!(
        :string => ""
      ),
      TaskStatus.create!(
        :string => ""
      )
    ])
  end

  it "renders a list of task_statuses" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
