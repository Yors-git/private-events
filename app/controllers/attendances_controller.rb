class AttendancesController < ApplicationController
  include ApplicationHelper

  def new
    @event_attendance = Attendance.new
  end

  def create
    # @u_id = current_user.id
    # @e_id = current_user.created_events.first
    # @event_attendance = Attendance.new(:user_id => @u_id, :event_id => @e_id)
    @event_attendance = Attendance.new
    @event_attendance.user_id = current_user.id
    @event_attendance.event_id = params[:id]
    # @event_attendance = Attendance.new(user_id: current_user.id, event_id: params[:event_id])
    if @event_attendance.save
      flash.notice = 'You are in!'
      redirect_to user_path(current_user.id)
    else
      redirect_to '/events'
    end
  end

  def show
    @events_attendance = Attendance.find(event_attendance_params)
  end

  def update; end

  def destroy; end

  private

  def event_params
    params.require(:event_attendance).permit(:event_id, :user_id)
  end
end
