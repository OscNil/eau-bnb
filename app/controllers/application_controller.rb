class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  before_action :set_user_boats
  before_action :set_user_bookings

  def set_user_bookings
    if current_user
      @my_bookings = current_user.bookings
    else
      @my_bookings = []
    end
  end

  def set_user_boats
    if current_user
      @my_boats = current_user.boats
    else
      @my_boats = []
    end
  end
    
end
