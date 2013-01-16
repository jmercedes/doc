class Branch < ActiveRecord::Base
  attr_accessible :name
  
  has_many :doctors
end
