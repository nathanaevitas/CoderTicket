class AddOrderidTypeTickettypes < ActiveRecord::Migration
  def change
  	add_column :ticket_types, :type, :string
  	add_column :ticket_types,:order_id, :integer
  end
end
