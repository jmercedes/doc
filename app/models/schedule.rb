class Schedule < ActiveRecord::Base
  attr_accessible :day, :hour
  
  belongs_to :doctor
end
