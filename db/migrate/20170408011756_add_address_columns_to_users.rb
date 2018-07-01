class AddAddressColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address, :string
    add_column :users, :address2, :string
    add_column :users, :postcode, :string
    add_column :users, :phone_number, :string
    add_column :users, :home_number, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
  end
end
