class BoatsController < ApplicationController

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    # CHANGE User.last!!!!!
    @boat.owner = User.last
    @boat.save
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:owner_id, :day_price, :boat_name, :photo,
                                 :nbr_beds, :description)
  end
end
