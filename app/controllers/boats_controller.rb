class BoatsController < ApplicationController

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(prestaurant_params)
    @boat.save
    # ==> boat_path does not exist yet
    # if @boat.save
    #   redirect_to boat_path(@boat)
    # else
    #   render :new
    # end
  end

  private

  def restaurant_params
    params.require(:boat).permit(:owner_id, :day_price, :boat_name, :boat_pic_url,
                                 :nbr_beds, :description)
  end
end
