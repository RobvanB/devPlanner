class Pm < ActiveRecord::Base
  has_many :projects
  belongs_to :user
end
