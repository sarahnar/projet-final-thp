class AddColumnMenuToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :menu, :string
  end
end
