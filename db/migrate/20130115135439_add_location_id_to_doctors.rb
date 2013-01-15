class AddLocationIdToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :location_id, :integer
  end
end
