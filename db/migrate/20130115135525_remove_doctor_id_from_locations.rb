class RemoveDoctorIdFromLocations < ActiveRecord::Migration
  def up
    remove_column :locations, :doctor_id
  end

  def down
    add_column :locations, :doctor_id, :integer
  end
end
