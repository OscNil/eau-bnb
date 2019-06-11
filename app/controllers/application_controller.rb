class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_user_boats

  def set_user_boats
    if current_user
      @my_boats = current_user.boats
    else
      @my_boats = []
    end
  end
end
