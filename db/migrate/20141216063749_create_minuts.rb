class CreateMinuts < ActiveRecord::Migration
  def change
    create_table :minuts do |t|
      t.integer :user_id
      t.integer :minuti_id
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
