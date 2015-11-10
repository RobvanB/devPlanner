require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :proj_id => "MyString",
      :proj_name => "MyString",
      :cust_id => 1
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_proj_id[name=?]", "project[proj_id]"

      assert_select "input#project_proj_name[name=?]", "project[proj_name]"

      assert_select "input#project_cust_id[name=?]", "project[cust_id]"
    end
  end
end
