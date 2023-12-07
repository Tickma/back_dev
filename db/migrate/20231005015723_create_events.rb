class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.belongs_to :user, optional: true, index: true, foreign_key: true
      t.string :event_image
      t.string :event_title
      t.string :dutch
      t.string :genre
      t.belongs_to :prefecture,optional: true, index: true, foreign_key: true
      t.date :end_date

      t.timestamps
    end
  end
end
