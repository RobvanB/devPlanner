require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :proj_id => "MyString",
      :proj_name => "MyString",
      :cust_id => 1
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_proj_id[name=?]", "project[proj_id]"

      assert_select "input#project_proj_name[name=?]", "project[proj_name]"

      assert_select "input#project_cust_id[name=?]", "project[cust_id]"
    end
  end
end
