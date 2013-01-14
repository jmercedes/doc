class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :name
      t.integer :doctor_id
      t.references :doctor

      t.timestamps
    end
    add_index :specialties, :doctor_id
  end
end
