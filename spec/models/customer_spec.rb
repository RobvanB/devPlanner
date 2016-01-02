require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe Customer do

    before do
      @customer = Customer.new(name: "Example Customer", project_id: 1)
    end

    subject{ @customer }

    it { should respond_to(:name) }
    it { should respond_to(:projects) }
  end
end
