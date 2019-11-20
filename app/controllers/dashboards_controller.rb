class DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings
    @islands = current_user.islands
  end
end
