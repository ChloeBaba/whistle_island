class DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings
    @islands = current_user.islands
    authorize @bookings
    authorize @islands
  end
end
