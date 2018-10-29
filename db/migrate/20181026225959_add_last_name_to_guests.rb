class AddLastNameToGuests < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :last_name, :string
  end
end
