class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
    authorize @booking
  end
end
