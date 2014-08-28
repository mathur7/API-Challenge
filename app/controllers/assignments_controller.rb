class AssignmentsController < ApplicationController

  def create
    @assignment = Assignment.create(assignment_params)
    respond_to do |format|
      if @assignment.save
        format.json { render json: @assignment, status: :created }
      else
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def assignment_params
    params.require(:assignment).permit(:timeslot_id, :boat_id)
  end

end
