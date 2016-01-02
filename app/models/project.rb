class Project < ActiveRecord::Base
  belongs_to :customer
  belongs_to :pm
  has_many :tasks
  belongs_to :status

  attr_readonly :proj_id
end
