class CreateMinutiDetails < ActiveRecord::Migration
  def change
    create_table :minuti_details do |t|
      t.integer :minut_id
      t.integer :user_id

      t.timestamps
    end
  end
end
