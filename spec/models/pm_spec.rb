require 'rails_helper'

RSpec.describe Pm, type: :model do
  before do
    @pm = Pm.new(name: "PM 1", email: "1@2.com", user_id: 1)
  end

  subject{ @pm }

  it { should respond_to (:name) }
  it { should respond_to (:email) }
  it { should respond_to (:user) }

end
