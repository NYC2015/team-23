class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :full_name
      t.string :username
      t.string :gender
      t.string :age
      t.string :phone_number
      t.boolean :is_anonymous
      t.text :about
      t.integer :user_id

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :profiles
  end
end
