class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string    :name,      null: false
      t.string    :logo,      null: false

      t.string    :city,      null: false
      t.string    :zipcode,   null: false
      t.string    :address,   null: false
      t.string    :phone,     null: false

      t.integer    :place,     null: false
      
      t.timestamps

      t.belongs_to :user
      t.timestamps
    end
  end
end
