class GuestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @guests = current_user.guests
  end

  def new
    @guest = Guest.new
  end

  def destroy_multiple
    if params[:add_guests]
      guest = Guest.new(first_name: params[:guest][:first_name],
                        last_name: params[:guest][:last_name],
                        phone: params[:guest][:phone],
                        user: current_user)
      guest.save
      @guests = current_user.guests
    else
      Guest.destroy(params[:guests])
    end

    respond_to do |format|
      format.html { redirect_to guests_path }
      format.json { head :no_content }
    end
  end
end
