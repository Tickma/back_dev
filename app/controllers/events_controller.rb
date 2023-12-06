class EventsController < ApplicationController
  def show
    @events = Event.all
    render json: {status: 'success', data: @events}
  end

  def addEvent
    @event = Event.new(event_params)
    if @event.save
      render json: {status: 'success', data: @event}
    else
      render json: {status: 'error', data: @event.errors}
    end
  end

  def deleteEvent
    event = Event.find(params[:id])
    event.destroy
  end

  private
    def event_params
      params.permit(:user_id, :event_image, :event_title, :dutch, :genre, :prefecture_id, :event_date, :end_date)
    end
end
