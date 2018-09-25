class AddTitleToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :title, :string, default: ""
  end
end
