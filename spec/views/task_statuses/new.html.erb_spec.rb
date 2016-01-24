require 'rails_helper'

RSpec.describe "task_statuses/new", type: :view do
  before(:each) do
    assign(:task_status, TaskStatus.new(
      :string => ""
    ))
  end

  it "renders new task_status form" do
    render

    assert_select "form[action=?][method=?]", task_statuses_path, "post" do

      assert_select "input#task_status_string[name=?]", "task_status[string]"
    end
  end
end
