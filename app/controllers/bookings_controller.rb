class BookingsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
    authorize @booking
  end
end
