class CreateQueuedMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :queued_messages do |t|
      t.belongs_to :user, index: true
      t.belongs_to :guest, index: true
      t.belongs_to :message, index: true
      t.string :job_id, null: false, default: ""
      t.integer :status, null: true
      t.datetime :scheduled_time, null: true
      t.timestamps
    end
  end
end
