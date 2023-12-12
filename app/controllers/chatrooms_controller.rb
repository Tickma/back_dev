class ChatroomsController < ApplicationController
  def showChatroom 
    @chatrooms = Chatroom.all
    render json: {status: 'success', data: @chatrooms}
  end

  def searchChatroom
    if @chatroom = Chatroom.find([:id])
      render json: {status: 'success', data: @chatroom}
    else
      render json: {status: 'error', data: @chatroom}
    end
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

  def showChatroomUser
    @chatroom_users = Chatroom_user.all
    render json: {status: 'success', data: @chatroom_users}
  end

  def searchChatroomUser
    if @chatroom_user = Chatroom_user.find
      render json: {status: 'success', data: @chatroom_user}
    else
      render json: {status: 'error', data: @chatroom_user}
    end
  end

  def addChatroomUser
    @chatroom_user = Chatroom_user.new(chatroom_user_params)
    if  @chatroom_user.save
      render json: {status: 'success', data:@chatroom_user}
    else
      render json: {status: 'error', data: @chatroom_user}
    end
  end

  def deleteChatroomUser
    chatroom_user = Chatroom.find(param[:id])
    chatroom_user.destroy
  end

  private
    def chatroom_params
      params.permit(:user_id)
    end

    def chatroom_user_params
      params.permit(:user_id, :chatroom_id)
    end
end
