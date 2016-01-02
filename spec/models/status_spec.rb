require 'rails_helper'

RSpec.describe Status, type: :model do
  before do
    @status = Status.new(name: "Status 1")
  end

  subject { @status }

  it { should respond_to{ :name } }

end
