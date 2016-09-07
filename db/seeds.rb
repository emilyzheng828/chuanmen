# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user_1 = User.create(email: "user-1@example.com", password: "password")
user_2 = User.create(email: "user-2@example.com", password: "password")

AvailableTime.create(user: user_1, from: DateTime.new(2016, 1, 1), to: DateTime.new(2016, 1, 8))
AvailableTime.create(user: user_1, from: DateTime.new(2016, 1, 16), to: DateTime.new(2016, 1, 20))

AvailableTime.create(user: user_2, from: DateTime.new(2016, 1, 5), to: DateTime.new(2016, 1, 9))
AvailableTime.create(user: user_2, from: DateTime.new(2016, 1, 21), to: DateTime.new(2016, 1, 28))
