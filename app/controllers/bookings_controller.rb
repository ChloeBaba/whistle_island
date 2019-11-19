class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
