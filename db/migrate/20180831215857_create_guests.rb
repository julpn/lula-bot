class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.belongs_to :user, index: true
      t.string :first_name,         null: false, default: ""
      t.string :phone,              null: false, default: ""
      t.timestamps
    end
  end
end
