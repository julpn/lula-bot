class GuestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @guests = current_user.guests
  end

  def new
    @guest = Guest.new
  end

  def create
    guest = Guest.new(first_name: params[:guest][:first_name], phone: params[:guest][:phone], user: current_user)
    guest.save
    @guests = current_user.guests
    render action: "index"
  end
end
