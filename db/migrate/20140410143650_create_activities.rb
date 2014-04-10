class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.time :time
      t.text :description
      t.string :category
      t.string :vendor
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
