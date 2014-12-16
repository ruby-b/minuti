class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer	:groups_id
      t.text	:groups_name
      t.integer :logins_id
      t.integer :users_id
      t.integer	:floortype_id
      t.timestamps
    end
  end
end
