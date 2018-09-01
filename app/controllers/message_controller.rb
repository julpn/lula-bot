class MessageController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = current_user.messages
  end

  def show

  end
end
