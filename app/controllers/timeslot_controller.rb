class TimeslotController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  def index
    day = params[:day]
    @timeslots = Timeslot.where("day" => day).all
    respond_to do |f|
      f.html { render :index }
      f.json { render json: @timeslots, :only => [:id, :start_time, :duration, :availability, :customer_count]}
    end
  end

  def create  
    @timeslot = Timeslot.create(timeslot_params)
    respond_to do |format|
      if @timeslot.save
        format.json { render json: @timeslot, status: :created }
      else
        format.json { render json: @timeslot.errors, status: :unprocessable_entity }
      end
    end
  end

private
  
  def timeslot_params
    params.require(:timeslot).permit(:start_time, :duration, :availability, :customer_count)
  end

end
