class AddDoctorIdToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :doctor_id, :integer
  end
end
