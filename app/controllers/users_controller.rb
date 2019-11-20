class UsersController < ApplicationController
  # /dashboard
  def dashboard
    @bookings = current_user.bookings
    @islands = current_user.islands
  end
end
