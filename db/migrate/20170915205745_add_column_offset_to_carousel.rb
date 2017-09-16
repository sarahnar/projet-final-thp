class AddColumnOffsetToCarousel < ActiveRecord::Migration[5.1]
  def change
    add_column :carousels, :offset, :integer
  end
end
