require 'rails_helper'

RSpec.describe "task_statuses/show", type: :view do
  before(:each) do
    @task_status = assign(:task_status, TaskStatus.create!(
      :string => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
