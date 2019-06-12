class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def my_received_bookings
    @received_bookings = []
    if current_user
      current_user.boats.each do |boat|
        @received_bookings << boat.bookings
      end
    else
      @received_bookings = []
    end
  end
end
