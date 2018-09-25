module MessageSchedulerService
  def self.schedule_message(current_user, message)
    current_user.guests.each do |guest|
      job_id = TwilioService.perform_at(message.scheduled_time, guest.phone, message.content)
      queued = QueuedMessage.find_or_create_by(
        guest_id: guest.id,
        user_id: current_user.id,
        message_id: message.id)
      queued.job_id = job_id
      queued.save
    end
  end
end
