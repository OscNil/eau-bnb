class BookingsController < ApplicationController

    # if @boat.owner == current_user
    #   flash[:notice] = "You can't book your own boat!."
    #   redirect_to boat_path(@boat)
    # end

  def create
    @booking = Booking.new(booking_params)
    @booking.boat = Boat.find(params[:boat_id])
    @booking.consumer = current_user
    if @booking.save
      redirect_to boat_path(@booking.boat), alert: "You can't book your own boat!"
    else
      render "boats/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:consumer_id, :boat_id, :start_date, :end_date)
  end
end
