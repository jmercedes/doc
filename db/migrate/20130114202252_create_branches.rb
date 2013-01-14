class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :doctor_id

      t.timestamps
    end
  end
end
