class Branch < ActiveRecord::Base
  attr_accessible :doctor_id, :name
  
  has_many :doctors
end
