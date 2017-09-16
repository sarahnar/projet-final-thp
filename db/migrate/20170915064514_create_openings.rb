class CreateOpenings < ActiveRecord::Migration[5.1]
  def change
    create_table :openings do |t|
      t.datetime :open_at,    null: false
      t.datetime :close_at,   null: false

      t.timestamps

      t.belongs_to    :restaurant 
      t.timestamps
    end
  end
end
