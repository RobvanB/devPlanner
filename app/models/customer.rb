class Customer < ActiveRecord::Base
  has_many :projects

  #before_save { |customer| customer.custId = Customer.maximum("custId") + 1 }

end
