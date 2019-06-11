class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_user_bookings

  def set_user_bookings
    if current_user
      @my_bookings = current_user.bookings
    else
      @my_bookings = []
    end
  end
end
