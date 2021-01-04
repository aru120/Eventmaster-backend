class AddTicketmasterEventToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :ticketmasterid, :string
  end
end
