class AddColumnsToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :Year_of_manufacture, :integer
  end
end
