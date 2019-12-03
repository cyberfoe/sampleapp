# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
User.create!(name:  "Nyein Chan Su Lwin",
             email: "nyeinchansulwin@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
=end
=begin
44.times do |n|
  name  = Faker::Name.name
  email = "myexample-#{n+4}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
              activated_at: Time.zone.now)
end
=end
=begin
1.times do |n|
  content  = Faker::Lorem.sentence(5)
  user_id = rand(1 .. 3)
  Micropost.create!(content:  content,
               user_id: user_id,
               )
end
=end


users = User.all
user  = users.first
following = users[2..22]
followers = users[3..22]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }