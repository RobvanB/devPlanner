class Project < ActiveRecord::Base
  belongs_to :customer
  belongs_to :pm
  has_many :tasks
  belongs_to :project_status

  attr_readonly :proj_id

  def dropdownlist
    "#{id} #{proj_name}"
  end
end
