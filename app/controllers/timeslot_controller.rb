class TimeslotController < ApplicationController

  def index
    @timeslots = Timeslot.all
    respond_to do |f|
      f.html { render :index }
      f.json { render json: @timeslots, :only => [:id, :start_time, :duration, :availability, :customer_count]}
    end
  end

  def create
    @timeslot = Timeslot.create(timeslot_params)
  end

private
  
  def timeslot_params
    params.require(:timeslot).permit(:start_time, :duration, :availability, :customer_count)
  end

end
