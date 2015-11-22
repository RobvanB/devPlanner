require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :custId => 1,
      :name => "MyString",
      :pm => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_custId[name=?]", "customer[custId]"

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_pm[name=?]", "customer[pm]"
    end
  end
end
