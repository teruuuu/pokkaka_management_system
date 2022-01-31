# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.connection.execute("TRUNCATE TABLE admin_users RESTART IDENTITY CASCADE")

admin_user1 = AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
admin_user2 = AdminUser.create!(email: "pokkapoka.admin@pokkapoka.com", password: "pokapoka2025", password_confirmation: "pokapoka2025")

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE patients RESTART IDENTITY CASCADE")

# userの初期データ
user1 = User.create!(email: "test1@example.com", password: "password1", name: "佐藤幸司")
user2 = User.create!(email: "test2@example.com", password: "password2", name: "鈴木正人")
user3 = User.create!(email: "test3@example.com", password: "password3", name: "高橋裕樹")
user4 = User.create!(email: "test4@example.com", password: "password4", name: "田中由希子")
user5 = User.create!(email: "test5@example.com", password: "password5", name: "佐藤昇")
user6 = User.create!(email: "test6@example.com", password: "password6", name: "清水亜紀")
user7 = User.create!(email: "test7@example.com", password: "password7", name: "佐藤慎吾")

patient1 = user1.patients.create!(name: "佐藤一郎", birthday: "1930-04-01", gender: "男", address: "水戸市", degree_of_care: "要介護2", key_person: "長男")
patient2 = user2.patients.create!(name: "鈴木幸子", birthday: "1956-01-15", gender: "女", address: "石岡市", degree_of_care: "要介護3", key_person: "夫")
patient3 = user3.patients.create!(name: "高橋次郎", birthday: "1940-10-03", gender: "男", address: "那珂市", degree_of_care: "要介護1", key_person: "長女")

ActiveRecord::Base.connection.execute("TRUNCATE TABLE time_frames RESTART IDENTITY CASCADE")

TimeFrame.create!(start_time: "9:00", end_time: "10:00")
TimeFrame.create!(start_time: "10:00", end_time: "11:00")
TimeFrame.create!(start_time: "11:00", end_time: "12:00")
TimeFrame.create!(start_time: "12:00", end_time: "13:00")
TimeFrame.create!(start_time: "13:00", end_time: "14:00")
TimeFrame.create!(start_time: "14:00", end_time: "15:00")
TimeFrame.create!(start_time: "15:00", end_time: "16:00")
TimeFrame.create!(start_time: "16:00", end_time: "17:00")
TimeFrame.create!(start_time: "17:00", end_time: "18:00")

puts "データの投入に成功しました！"
