class RemoveDoctorIdFromSpecialties < ActiveRecord::Migration
  def up
    remove_column :specialties, :doctor_id
  end

  def down
    add_column :specialties, :doctor_id, :integer
  end
end
