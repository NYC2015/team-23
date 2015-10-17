class CreateSms < ActiveRecord::Migration
  def self.up
    create_table :sms do |t|
      t.string :from
      t.string :to
      t.text :body
      t.integer :user_id

      t.timestamps null: false
    end
  end

  def self.down
  	drop_table :sms
  end
end
