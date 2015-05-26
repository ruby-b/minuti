class CreateMinutsUsers < ActiveRecord::Migration
  def change
    create_table :minuts_users do |t|
      t.integer :minut_id
      t.integer :user_id
    end
  end
end
