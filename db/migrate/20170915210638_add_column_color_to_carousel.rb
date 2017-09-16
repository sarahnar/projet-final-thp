class AddColumnColorToCarousel < ActiveRecord::Migration[5.1]
  def change
    add_column :carousels, :color, :string
  end
end
