class Project < ActiveRecord::Base
  belongs_to :customer, foreign_key: "custId"
  has_one :pm, foreign_key: "id"

  attr_readonly :proj_id
end
