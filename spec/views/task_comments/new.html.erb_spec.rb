require 'rails_helper'

RSpec.describe "task_comments/new", type: :view do
  before(:each) do
    assign(:task_comment, TaskComment.new(
      :comment => "MyText",
      :task => nil,
      :user => nil
    ))
  end

  it "renders new task_comment form" do
    render

    assert_select "form[action=?][method=?]", task_comments_path, "post" do

      assert_select "textarea#task_comment_comment[name=?]", "task_comment[comment]"

      assert_select "input#task_comment_task_id[name=?]", "task_comment[task_id]"

      assert_select "input#task_comment_user_id[name=?]", "task_comment[user_id]"
    end
  end
end
