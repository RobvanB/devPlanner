require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :custId => 1,
        :name => "Name",
        :pm => "Pm"
      ),
      Customer.create!(
        :custId => 1,
        :name => "Name",
        :pm => "Pm"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pm".to_s, :count => 2
  end
end
