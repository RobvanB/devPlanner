require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :proj_id => "Proj",
      :proj_name => "Proj Name",
      :cust_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Proj/)
    expect(rendered).to match(/Proj Name/)
    expect(rendered).to match(/1/)
  end
end
