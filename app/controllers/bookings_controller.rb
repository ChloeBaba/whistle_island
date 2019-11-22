class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def show
    set_booking
    authorize @booking
  end

  def new
    @island = Island.find(params[:island_id])
    @island_owner = @island.user
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.island = Island.find(params[:island_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking successful'
    else
      render :new
    end
    authorize @booking
  end

  def edit
    set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    set_booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Booking was successfully updated.'
    else
      render :edit
    end
    authorize @booking
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to dashboard_path, notice: 'Booking was successfully deleted.'
    authorize @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
