class Specialty < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :doctor
end
