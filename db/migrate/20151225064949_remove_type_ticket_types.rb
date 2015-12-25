class RemoveTypeTicketTypes < ActiveRecord::Migration
  def change
  	remove_column :ticket_types, :type
  end
end
