class Doctor < ActiveRecord::Base
  attr_accessible :branch_id, :specialty_id, :location_id, :bio, :name, :prefix, :schedule_attributes
  
  belongs_to :branch

  has_many :specialties
  has_one  :location
  has_many :schedules
  
  def schedule_attributes=(schedule_attributes)
      schedule_attributes.each do |attributes|
        schedules.build(attributes)
      end
  end
  
end
