require 'rails_helper'

RSpec.describe "pms/index", type: :view do
  before(:each) do
    assign(:pms, [
      Pm.create!(
        :name => "Name",
        :email => "Email",
        :user_id => 1
      ),
      Pm.create!(
        :name => "Name",
        :email => "Email",
        :user_id => 1
      )
    ])
  end

  it "renders a list of pms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
