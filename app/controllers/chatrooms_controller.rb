class ChatroomsController < ApplicationController
  def show 
    @chatrooms = Event.all
    render json: {status: 'success', data: @chatrooms}
  end

  def addChatroom
    @chatroom = Event.new(chatroom_params)
    if @chatroom.save
      render json: {status: 'success', data: @chatroom}
    else
      render json: {status: 'error', data: @chatroom}
    end
  end


  def deleteChatroom
    event = Event.find(param[:id])
    event.destroy
  end

  private
    def event_params
      params.permit(:user_id)
    end
end
