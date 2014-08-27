class BoatsController < ApplicationController

  def index
    @boats = Boat.all
    respond_to do |f|
      f.html { render :index }
      f.json { render json: @boats, :only => [:id, :capacity, :name]}
    end
  end

  def create
    @boat = Boat.create(boat_params)
  end

private
  
  def boat_params
    params.require(:boat).permit(:capacity, :name)
  end


end
