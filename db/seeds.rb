# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.find_or_create_by(name: "work")
Category.find_or_create_by(name: "life")
Category.find_or_create_by(name: "hobby")
Category.find_or_create_by(name: "other")
Memo.find_or_create_by(title: "旅行", body: "北海道", category_id: "2")
Memo.find_or_create_by(title: "夏闇の宿題", body: "明日までに自由研究を決める", category_id: "4")
Memo.find_or_create_by(title: "晩ごはん", body: "プログラミング", category_id: "2")
Memo.find_or_create_by(title: "趣味", body: "けん玉", category_id: "3")
Memo.find_or_create_by(title: "朝ごはん", body: "ヨーグルト", category_id: "2")
Memo.find_or_create_by(title: "やること", body: "出張精算の申請", category_id: "1")
Memo.find_or_create_by(title: "映画", body: "ジブリの映画を見る", category_id: "3")
Memo.find_or_create_by(title: "宿題", body: "友達にやってもらう", category_id: "4")
Memo.find_or_create_by(title: "中間テスト", body: "次から頑張る", category_id: "1")
Memo.find_or_create_by(title: "昼ごはん", body: "プログラミング", category_id: "2")
Memo.find_or_create_by(title: "じゃんけん", body: "グーしか出さない", category_id: "4")
Memo.find_or_create_by(title: "お米", body: "コシヒカリしか勝たん", category_id: "4")
puts "categoryデータをインポートしました"
