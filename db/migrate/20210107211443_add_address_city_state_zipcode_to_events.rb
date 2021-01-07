class AddAddressCityStateZipcodeToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :address, :string
    add_column :events, :city, :string
    add_column :events, :state, :string
    add_column :events, :zipcode, :string
  end
end
