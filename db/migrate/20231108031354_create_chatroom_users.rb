class CreateChatroomUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :chatroom_users do |t|
      t.belongs_to :user, optional:true, null: false, foreign_key: true
      t.belongs_to :chatroom, optional:true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
