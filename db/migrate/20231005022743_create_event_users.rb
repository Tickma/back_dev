class CreateEventUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :event_users do |t|
      t.belongs_to:user_id, index: true, foreign_key: true
      t.belongs_to:event_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
