class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.boat = Boat.find(params[:boat_id])
    # CHANGE User.last!!!!!
    @booking.consumer = User.last
    @booking.save
    if @booking.save
      redirect_to boat_booking_path(@booking.boat, @booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:consumer_id, :boat_id, :start_date, :end_date)
  end
end
