class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :users_id
      t.text :users_name
      t.text :users_mail
      t.timestamps
    end
  end
end
