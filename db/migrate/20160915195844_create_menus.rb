class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.integer :user_id
      t.float :food_cost_percentage

      t.timestamps
    end
  end
end
