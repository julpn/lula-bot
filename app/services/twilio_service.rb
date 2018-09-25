class TwilioService
  include Sidekiq::Worker
  require 'twilio-ruby'

  def perform(phone, content)
    @client = Twilio::REST::Client.new ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]
    @client.api.account.messages.create(
      from: '+16467607861',
      to: phone,
      body: content
    )
  end
end
