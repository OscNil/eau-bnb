class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.owner = current_user
    @boat.save
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:owner_id, :day_price, :boat_name, :photo,
                                 :nbr_beds, :description)
  end
end
