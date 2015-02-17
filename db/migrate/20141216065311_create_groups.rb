class CreateGroups < ActiveRecord::Migration
  def up 
    create_table :groups do |t|
      t.integer	:group_id
      t.text	:group_name
      t.integer :user_id
      t.timestamps
    end
  end

  def down
      drop_table :groups
  end
end
