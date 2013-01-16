class Schedule < ActiveRecord::Base
  attr_accessible :doctor_id, :day, :hour
  
  belongs_to :doctor
end
