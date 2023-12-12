class ChatroomsController < ApplicationController
  def show 
    @chatrooms = Chatroom.all
    render json: {status: 'success', data: @chatrooms}
  end

  def addChatroom
    @chatroom =Chatroom.new(chatroom_params)
    if @chatroom.save
      render json: {status: 'success', data: @chatroom}
    else
      render json: {status: 'error', data: @chatroom}
    end
  end


  def deleteChatroom
    chatroom = Chatroom.find(param[:id])
    chatroom.destroy
  end

  private
    def chatroom_params
      params.permit(:user_id)
    end
end
