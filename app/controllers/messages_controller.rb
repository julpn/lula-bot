class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = current_user.messages
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save
      flash[:success] = "Saved!"
      render "edit"
    else
      render 'new'
    end
  end

  def edit
    @message = Message.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.assign_attributes(message_params)
    if @message.save
      flash[:success] = "Saved!"
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:title, :content, :scheduled_time)
  end
end
