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
      redirect_to '/users/show'
    else
      render :new
    end
  end

  def show
    @event = current_user.created_events
  end

  private

  def event_params
    params.require(:event).permit(:date_of_event, :place, :title, :description, :user_id)
  end
end
