# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.connection.execute("TRUNCATE TABLE admin_users RESTART IDENTITY CASCADE")

AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
AdminUser.create!(email: "pokkapoka.admin@pokkapoka.com", password: "pokapoka2025", password_confirmation: "pokapoka2025")

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE patients RESTART IDENTITY CASCADE")

# userの初期データ
user1 = User.create!(email: "test1@example.com", password: "password1", name: "佐藤幸司")
user2 = User.create!(email: "test2@example.com", password: "password2", name: "鈴木正人")
user3 = User.create!(email: "test3@example.com", password: "password3", name: "高橋裕樹")
user4 = User.create!(email: "test4@example.com", password: "password4", name: "田中慎吾")
user5 = User.create!(email: "test5@example.com", password: "password5", name: "佐藤昇")
user6 = User.create!(email: "test6@example.com", password: "password6", name: "清水夏鈴")

# patientの初期データ
patient1 = user1.patients.create!(name: "佐藤一郎", birthday: "1930-04-01", gender: "男", address: "水戸市", degree_of_care: "要介護2", key_person: "長男")
patient2 = user1.patients.create!(name: "鈴木幸子", birthday: "1956-01-15", gender: "女", address: "水戸市", degree_of_care: "要介護3", key_person: "夫")
patient3 = user1.patients.create!(name: "高橋二郎", birthday: "1940-11-13", gender: "男", address: "水戸市", degree_of_care: "要介護1", key_person: "長女")
patient4 = user1.patients.create!(name: "田中清", birthday: "1948-01-05", gender: "男", address: "那珂市", degree_of_care: "要介護3", key_person: "長女")
patient5 = user2.patients.create!(name: "伊藤正雄", birthday: "1930-12-24", gender: "男", address: "鉾田市", degree_of_care: "要介護1", key_person: "長女")
patient6 = user2.patients.create!(name: "渡辺千代", birthday: "1950-10-03", gender: "女", address: "鉾田市", degree_of_care: "要介護1", key_person: "長女")
patient7 = user2.patients.create!(name: "山本うめ", birthday: "1947-11-13", gender: "女", address: "茨城町", degree_of_care: "要介護1", key_person: "長女")
patient8 = user2.patients.create!(name: "中村茂", birthday: "1940-07-08", gender: "男", address: "茨城町", degree_of_care: "要介護2", key_person: "長女")
patient9 = user2.patients.create!(name: "小林三郎", birthday: "1943-09-23", gender: "男", address: "小美玉市", degree_of_care: "要介護1", key_person: "長女")
patient10 = user3.patients.create!(name: "加藤正", birthday: "1942-06-23", gender: "男", address: "水戸市", degree_of_care: "要介護1", key_person: "長女")
patient11 = user3.patients.create!(name: "吉田ヨシ", birthday: "1948-10-18", gender: "女", address: "水戸市", degree_of_care: "要介護2", key_person: "長女")
patient12 = user4.patients.create!(name: "山田三郎", birthday: "1949-04-21", gender: "男", address: "石岡市", degree_of_care: "要介護2", key_person: "長女")
patient13 = user4.patients.create!(name: "佐々木キヨ", birthday: "1943-04-22", gender: "女", address: "小美玉市", degree_of_care: "要介護1", key_person: "長女")
patient14 = user5.patients.create!(name: "山口久子", birthday: "1943-10-22", gender: "女", address: "笠間市", degree_of_care: "要介護3", key_person: "長女")
patient15 = user6.patients.create!(name: "佐藤一郎", birthday: "1948-02-15", gender: "男", address: "笠間市", degree_of_care: "要介護1", key_person: "長女")

# informationの初期データ
user1.informations.create!(comment: "予後良好です。", patient_id: patient1.id)
user1.informations.create!(comment: "玄関に段差があります。\nスロープ導入を紹介しています。", patient_id: patient1.id)
user2.informations.create!(comment: "簡易入浴でお願いします。", patient_id: patient2.id)
user3.informations.create!(comment: "食事は17時に徹底して下さい。", patient_id: patient3.id)

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
