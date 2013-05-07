class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.string :type
      t.integer :menu_id

      t.timestamps
    end
  end
end
