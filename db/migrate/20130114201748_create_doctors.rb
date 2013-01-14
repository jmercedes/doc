class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :prefix
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
