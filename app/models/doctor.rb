class Doctor < ActiveRecord::Base
  attr_accessible :bio, :name, :prefix
  
  belongs_to :branch

  has_many :specialties
  has_one  :location
  has_many :schedules
end
