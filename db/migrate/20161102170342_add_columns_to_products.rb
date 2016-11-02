class AddColumnsToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :year_of_manufacture, :integer
  end
end
