class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string      :comment,       null: false
      t.integer     :note

      t.timestamps

      t.belongs_to    :restaurant, :user
    end
  end
end
