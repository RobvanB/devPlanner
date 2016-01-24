require 'rails_helper'

RSpec.describe "task_statuses/edit", type: :view do
  before(:each) do
    @task_status = assign(:task_status, TaskStatus.create!(
      :string => ""
    ))
  end

  it "renders the edit task_status form" do
    render

    assert_select "form[action=?][method=?]", task_status_path(@task_status), "post" do

      assert_select "input#task_status_string[name=?]", "task_status[string]"
    end
  end
end
