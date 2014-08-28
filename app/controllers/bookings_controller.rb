class BookingsController < ApplicationController

  def create
    @booking = Booking.create(booking_params)
    respond_to do |format|
      if @booking.save
        format.json { render json: @booking, status: :created }
      else
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def booking_params
    params.require(:booking).permit(:size, :timeslot_id)
  end

end
