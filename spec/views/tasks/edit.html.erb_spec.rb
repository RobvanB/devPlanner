require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :project_id => 1,
      :user_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_project_id[name=?]", "task[project_id]"

      assert_select "input#task_user_id[name=?]", "task[user_id]"

      assert_select "input#task_name[name=?]", "task[name]"
    end
  end
end
