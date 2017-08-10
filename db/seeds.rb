# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
User.create!(first_name: "D",
             last_name: "Mac",
             email: "dmac@email.com",
             password:              "thisis@test",
             password_confirmation: "thisis@test",
             admin: true)

10.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = "tester_#{n+1}@email.com"
  password = "password"
  User.create!(first_name: first_name,
               last_name: last_name,
               email: email,
               password:              password,
               password_confirmation: password)
end

# Rooms
# users = User.order(:created_at)
# 3.times do
#  name = Faker::Address.secondary_address
#  location = Faker::Address.city
#  description = Faker::Lorem.sentence(5)
#  price = Faker::Number.decimal(2)
#  users.each { |user| user.homes.create!(name: name,
#                                         description: description,
#                                         price: price)
#             }
# end

# Relationsships
users = User.all
user = users.first
following = users[2..5]
followers = users[4..8]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
