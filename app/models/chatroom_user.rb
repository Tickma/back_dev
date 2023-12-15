class Chatroom_user < ApplicationRecord
  belongs_to:user
  belongs_to:chatroom
end
