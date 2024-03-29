class CreateChatroomUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :chatroom_users do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :chatroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
