class EventsController < ApplicationController
  include ApplicationHelper
  def index
    @events = Event.all
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      flash.notice = "Event at #{@event[:place]} Created!"
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:id, :creator, :date_of_event, :place, :title, :description, :user_id)
  end
end
