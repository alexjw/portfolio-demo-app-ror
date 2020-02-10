class CreateMealDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_details do |t|
      t.integer :ingredient_id
      t.integer :meal_id
      t.decimal :quantity, default: 1

      t.timestamps
    end
  end
end
