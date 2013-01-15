class AddBranchIdToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :branch_id, :integer
  end
end
