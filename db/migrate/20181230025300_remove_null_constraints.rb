class RemoveNullConstraints < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :phone, :string, null: true
    change_column :users, :event_date, :date, null: true
  end
end
