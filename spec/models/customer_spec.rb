require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe Customer do

    before do
      @customer = Customer.new(name: "Example User", email: "user@example.com",
                       password: "foobar", password_confirmation: "foobar")
    end

        .
    .
    it { should respond_to(:projects) }
    .
end
