require 'rails_helper'

RSpec.describe "pms/show", type: :view do
  before(:each) do
    @pm = assign(:pm, Pm.create!(
      :name => "Name",
      :email => "Email",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
  end
end
