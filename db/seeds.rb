# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

prefectures = [
    {"name": "北海道","name_kana": "ほっかいどう"},
    {"name": "青森県","name_kana": "あおもり"},
    {"name": "岩手県","name_kana": "いわて"},
    {"name": "宮城県","name_kana": "みやぎ"},
    {"name": "秋田県","name_kana": "あきた"},
    {"name": "山形県","name_kana": "やまがた"},
    {"name": "福島県","name_kana": "ふくしま"},
    {"name": "茨城県","name_kana": "いばらぎ"},
    {"name": "栃木県","name_kana": "とちぎ"},
    {"name": "群馬県","name_kana": "ぐんま"},
    {"name": "埼玉県","name_kana": "さいたま"},
    {"name": "千葉県","name_kana": "ちば"},
    {"name": "東京都","name_kana": "とうきょうと"},
    {"name": "神奈川県","name_kana": "かながわ"},
    {"name": "新潟県","name_kana": "にいがた"},
    {"name": "富山県","name_kana": "とやま"},
    {"name": "石川県","name_kana": "いしかわ"},
    {"name": "福井県","name_kana": "ふくい"},
    {"name": "山梨県","name_kana": "やまなし"},
    {"name": "長野県","name_kana": "ながの"},
    {"name": "岐阜県","name_kana": "ぎふ"},
    {"name": "静岡県","name_kana": "しずおか"},
    {"name": "愛知県","name_kana": "あいち"},
    {"name": "三重県","name_kana": "みえ"},
    {"name": "滋賀県","name_kana": "しが"},
    {"name": "京都府","name_kana": "きょうとふ"},
    {"name": "大阪府","name_kana": "おおさかふ"},
    {"name": "兵庫県","name_kana": "ひょうご"},
    {"name": "奈良県","name_kana": "なら"},
    {"name": "和歌山県","name_kana": "わかやま"},
    {"name": "鳥取県","name_kana": "とっとり"},
    {"name": "島根県","name_kana": "しまね"},
    {"name": "岡山県","name_kana": "おかやま"},
    {"name": "広島県","name_kana": "ひろしま"},
    {"name": "山口県","name_kana": "やまぐち"},
    {"name": "徳島県","name_kana": "とくしま"},
    {"name": "香川県","name_kana": "かがわ"},
    {"name": "愛媛県","name_kana": "えひめ"},
    {"name": "高知県","name_kana": "こうち"},
    {"name": "福岡県","name_kana": "ふくおか"},
    {"name": "佐賀県","name_kana": "さが"},
    {"name": "長崎県","name_kana": "ながさき"},
    {"name": "熊本県","name_kana": "くまもと"},
    {"name": "大分県","name_kana": "おおいた"},
    {"name": "宮崎県","name_kana": "みやざき"},
    {"name": "鹿児島県","name_kana": "かごしま"},
    {"name": "沖縄県","name_kana": "おきなわ"}
]

users = [
  {"name": "チケマ太郎", "email": "tickma@email.com", "password": "tickmapass", "birthday": "2023-10-18", "gender": "男性", "prefecture_id": 1, "job": "OL", "icon_image": "tickmaimage"}
]

events = [
  {"user_id": 1, "event_image": "eventimage", "event_title": "eventtitle", "dutch": "eventwari", "genre": "event", "prefecture_id": 1, "event_date": "2023-12-06", "end_date": "2023-12-06"}
]

chatrooms = [
  {"user_id": 1}
]

chatroom_users = [
  {"user_id": 1, "chatroom_id": 1}
]

ActiveRecord::Base.transaction do

  prefectures.each do |prefecture|
    Prefecture.create!(prefecture)
  end

  users.each do |user|
    User.create!(user)
  end

  events.each do |event|
    Event.create!(event)
  end

  chatrooms.each do |chatroom|
    Chatroom.create!(chatroom)
  end

end
