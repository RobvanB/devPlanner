require 'rails_helper'

RSpec.describe "pms/new", type: :view do
  before(:each) do
    assign(:pm, Pm.new(
      :name => "MyString",
      :email => "MyString",
      :user_id => 1
    ))
  end

  it "renders new pm form" do
    render

    assert_select "form[action=?][method=?]", pms_path, "post" do

      assert_select "input#pm_name[name=?]", "pm[name]"

      assert_select "input#pm_email[name=?]", "pm[email]"

      assert_select "input#pm_user_id[name=?]", "pm[user_id]"
    end
  end
end
