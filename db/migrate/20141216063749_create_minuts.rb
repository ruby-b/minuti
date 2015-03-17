class CreateMinuts < ActiveRecord::Migration
  def change
    create_table :minuts do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
