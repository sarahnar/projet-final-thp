class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string      :phone
      t.datetime    :when
      t.integer     :person

      t.timestamps

      t.belongs_to  :restaurant
      t.timestamps
    end
  end
end
