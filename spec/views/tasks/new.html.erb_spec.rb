require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :project_id => 1,
      :user_id => 1,
      :name => "MyString"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_project_id[name=?]", "task[project_id]"

      assert_select "input#task_user_id[name=?]", "task[user_id]"

      assert_select "input#task_name[name=?]", "task[name]"
    end
  end
end
