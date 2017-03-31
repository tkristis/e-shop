class ChangeFlavorsColumnDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :flavors, :string
  end
end
