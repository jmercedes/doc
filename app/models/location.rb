class Location < ActiveRecord::Base
  attr_accessible :doctor_id, :name
  
  belongs_to :doctor
end
