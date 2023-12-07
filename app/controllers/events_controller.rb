class EventsController < ApplicationController
  def show
    @users = Event.all
    render json: {status: 'success', data: @users}
  end

  def addEvent
    @event = Event.new(user_params)
    if @event.save
      render json: {status: 'success', data: @user}
    else
      render json: {status: 'error', data: @user.errors}
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
