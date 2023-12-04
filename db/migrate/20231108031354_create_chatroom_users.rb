class CreateChatroomUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :chatroom_users do |t|
      t.belongs_to :user_id, null: false, foreign_key: true
      t.belongs_to :chatroom_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
