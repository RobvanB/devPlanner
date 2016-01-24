require 'rails_helper'

RSpec.describe "task_comments/edit", type: :view do
  before(:each) do
    @task_comment = assign(:task_comment, TaskComment.create!(
      :comment => "MyText",
      :task => nil,
      :user => nil
    ))
  end

  it "renders the edit task_comment form" do
    render

    assert_select "form[action=?][method=?]", task_comment_path(@task_comment), "post" do

      assert_select "textarea#task_comment_comment[name=?]", "task_comment[comment]"

      assert_select "input#task_comment_task_id[name=?]", "task_comment[task_id]"

      assert_select "input#task_comment_user_id[name=?]", "task_comment[user_id]"
    end
  end
end
