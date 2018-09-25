class Message < ApplicationRecord
  belongs_to :user

  after_save :schedule_message

  def schedule_message
    MessageSchedulerService::schedule_message(user, self)
  end
end
