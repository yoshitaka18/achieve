# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#100.times do |n|
#  email = Faker::Internet.email
#  name = "User#{n+1}"
#  password = "password"
#  User.create!(email: email,
#               name: name,
#               password: password,
#               password_confirmation: password,
#               )
#end

n=1
while n <= 100
  # ユーザ作成
  email = Faker::Internet.email
  name = "User#{n}"
  password = "password"
  User.create!(email: email,
               name: name,
               password: password,
               password_confirmation: password,
               )
  # ブログ作成
  title = "Title#{n}"
  content = "content"
  Blog.create(
    title: title,
    content: content,
    user_id: n
  )
  n = n + 1
end
