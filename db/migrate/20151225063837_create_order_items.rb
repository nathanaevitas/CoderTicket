class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :price
      t.integer :quantity
      t.belongs_to :order

      t.timestamps null: false
    end
  end
end
