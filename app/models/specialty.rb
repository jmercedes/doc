class Specialty < ActiveRecord::Base
  belongs_to :doctor
  attr_accessible :doctor_id, :name
end
