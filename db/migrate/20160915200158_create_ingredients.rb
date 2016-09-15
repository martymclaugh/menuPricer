class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :menu_id
      t.string :name
      t.string :amount
      t.float :price_for_recipe

      t.timestamps
    end
  end
end
