class ChangeColumnOpenAtOpenings < ActiveRecord::Migration[5.1]
  def change
    change_column :openings, :open_at, :integer
    change_column :openings, :close_at, :integer
  end
end
