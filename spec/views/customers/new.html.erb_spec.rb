require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :custId => 1,
      :name => "MyString",
      :pm => "MyString"
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_custId[name=?]", "customer[custId]"

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_pm[name=?]", "customer[pm]"
    end
  end
end
