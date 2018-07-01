class ChangeYearOfManufactureColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :year_of_manufacture, :flavors
  end
end
