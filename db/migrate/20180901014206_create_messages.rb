class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.belongs_to :user, index: true
      t.text :content, null: false, default: ""
      t.datetime :scheduled_time, null: true
      t.timestamps
    end
  end
end
