class CreateGroups < ActiveRecord::Migration
  def up 
    create_table :groups do |t|
      t.integer	:groups_id
      t.text	:groups_name
      t.integer :users_id
      t.timestamps
    end
  end

  def down
      drop_table :groups
  end
end
