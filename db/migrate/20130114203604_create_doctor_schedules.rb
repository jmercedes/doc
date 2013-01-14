class CreateDoctorSchedules < ActiveRecord::Migration
  def change
    create_table :doctor_schedules, id: false do |t|
      t.integer :doctor_id
      t.integer :schedule_id

      t.timestamps
    end
  end
end
