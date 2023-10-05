class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :birthday
      t.string :gender
      t.belongs_to :prefecture_id, index: true, foreign_key: true
      t.string :job
      t.string :icon_image

      t.timestamps
    end
  end
end
