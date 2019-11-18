require 'date'

puts 'Cleaning database...'
User.destroy_all
Island.destroy_all
Booking.destroy_all

puts 'Creating users...'
user_1 = User.create!(email: "user_1@example.com", password: "123456")
user_2 = User.create!(email: "user_2@example.com", password: "123456")
user_3 = User.create!(email: "user_3@example.com", password: "123456")
user_4 = User.create!(email: "user_4@example.com", password: "123456")
user_5 = User.create!(email: "user_5@example.com", password: "123456")
user_6 = User.create!(email: "user_6@example.com", password: "123456")
user_7 = User.create!(email: "user_7@example.com", password: "123456")
user_8 = User.create!(email: "user_8@example.com", password: "123456")
user_9 = User.create!(email: "user_9@example.com", password: "123456")
user_10 = User.create!(email: "user_10@example.com", password: "123456")

puts 'Creating islands...'
island_1 = Island.new(name: "island_1", description: "blablabla_1", availability: true)
island_2 = Island.new(name: "island_2", description: "blablabla_2", availability: true)
island_3 = Island.new(name: "island_3", description: "blablabla_3", availability: true)
island_4 = Island.new(name: "island_4", description: "blablabla_4", availability: true)
island_5 = Island.new(name: "island_5", description: "blablabla_5", availability: true)
island_1.user = user_1
island_2.user = user_2
island_3.user = user_3
island_4.user = user_4
island_5.user = user_5
island_1.save!
island_2.save!
island_3.save!
island_4.save!
island_5.save!

puts 'Creating bookings'
booking_1 = Booking.new(start_date: Date.new(2019,12,6), end_date: Date.new(2019,12,7), total_price: 1)
booking_2 = Booking.new(start_date: Date.new(2019,12,6), end_date: Date.new(2019,12,7), total_price: 1)
booking_3 = Booking.new(start_date: Date.new(2019,12,6), end_date: Date.new(2019,12,7), total_price: 1)
booking_4 = Booking.new(start_date: Date.new(2019,12,6), end_date: Date.new(2019,12,7), total_price: 1)
booking_5 = Booking.new(start_date: Date.new(2019,12,6), end_date: Date.new(2019,12,7), total_price: 1)
booking_1.user = user_10
booking_1.island = island_1
booking_2.user = user_9
booking_2.island = island_2
booking_3.user = user_8
booking_3.island = island_3
booking_4.user = user_7
booking_4.island = island_4
booking_5.user = user_6
booking_5.island = island_5
booking_1.save!
booking_2.save!
booking_3.save!
booking_4.save!
booking_5.save!
puts 'Finished!'
