class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.text :user_name
      t.text :user_mail
      t.timestamps
    end
  end
end
