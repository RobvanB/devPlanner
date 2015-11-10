require 'rails_helper'

RSpec.describe Customer, type: :model do

  before { @customer = Customer.new(cust_id: 1, name: "Example Customer") }

  describe Customer do
    #let(:customer) { FactoryGirl.create(:customer) }
    subject{ @customer }
    it { should respond_to(:cust_id) }
    it { should respond_to(:name) }
  end
end
