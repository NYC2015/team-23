class CreateClinicLocations < ActiveRecord::Migration
  def self.up
    create_table :clinic_locations do |t|
      t.string :title
      t.string :address
      t.string :phone_number
      t.string :long
      t.string :lat
      t.integer :user_id

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :title
  end
end
