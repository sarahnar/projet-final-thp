class CreateCarousels < ActiveRecord::Migration[5.1]
  def change
    create_table :carousels do |t|
      t.string :image,      null: false
      t.string :title,      null: false
      t.string :baseline,   null: false

      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
