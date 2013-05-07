class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.date :date
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
