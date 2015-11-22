require 'rails_helper'

RSpec.describe "pms/edit", type: :view do
  before(:each) do
    @pm = assign(:pm, Pm.create!(
      :name => "MyString",
      :email => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit pm form" do
    render

    assert_select "form[action=?][method=?]", pm_path(@pm), "post" do

      assert_select "input#pm_name[name=?]", "pm[name]"

      assert_select "input#pm_email[name=?]", "pm[email]"

      assert_select "input#pm_user_id[name=?]", "pm[user_id]"
    end
  end
end
