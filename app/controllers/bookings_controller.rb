class BookingsController < ApplicationController
  def index
    @booking = policy_scope(Booking)
  end
end
