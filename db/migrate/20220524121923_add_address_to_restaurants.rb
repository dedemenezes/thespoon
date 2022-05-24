class AddAddressToRestaurants < ActiveRecord::Migration[6.1]
  def change
                #table_name, #column_name, #column_type
    add_column :restaurants, :address, :string
  end
end
