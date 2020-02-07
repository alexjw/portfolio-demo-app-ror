class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :table
      t.boolean :closed, default: false

      t.timestamps
    end
  end
end
