class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :meal_id
      t.decimal :price
      t.string :status, default: 'Pending'
      t.decimal :quantity, default: 1
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
