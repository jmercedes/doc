class RemoveDoctorIdFromBranches < ActiveRecord::Migration
  def up
    remove_column :branches, :doctor_id
  end

  def down
    add_column :branches, :doctor_id, :integer
  end
end
