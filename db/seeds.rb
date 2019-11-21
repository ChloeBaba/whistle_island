require 'date'

puts 'Cleaning database...'
Booking.destroy_all
Island.destroy_all
User.destroy_all

puts 'Creating users...'
user_1 = User.create!(name: "Commodus", email: "user_1@example.com", password: "123456")
user_2 = User.create!(name: "Attila the Hun", email: "user_2@example.com", password: "123456")
user_3 = User.create!(name: "Nero", email: "user_3@example.com", password: "123456")
user_4 = User.create!(name: "Fu Sheng", email: "user_4@example", password: "123456")
user_5 = User.create!(name: "Emperor Yang of Sui", email: "user_5@example.com", password: "123456")
user_6 = User.create!(name: "Vlad the Impaler ", email: "user_6@example.com", password: "123456")
user_7 = User.create!(name: "Ivan the Terrible", email: "user_7@example.com", password: "123456")
user_8 = User.create!(name: "Caligula", email: "user_8@example.com", password: "123456")
user_9 = User.create!(name: "Genghis Khan", email: "user_9@example.com", password: "123456")
user_10 = User.create!(name: "Boudica", email: "user_10@example.com", password: "123456")

puts 'Creating islands...'

island_1 = Island.new(name: "Seychelles", location: "Seychelles", description: "Located in the Indian Ocean, Seychelles islands is characterised by majestic seascapes, unparalleled beauty and temperate weather.", availability: true, price: 5400)
island_2 = Island.new(name: "Santorini", location: "Santorini", description: "Located in Greece in the heart of the vast Aegean sea, Santorini boasts a unique landscape! The island's beauty speaks for itself. Come rent it out.", availability: true, price: 2800)
island_3 = Island.new(name: "Fiji", location: "Fiji", description: "Located in the South Pacific, If someone asks, 'Are you happy?' What would you say? Well, if you rent Fiji, there is an almost nine-times-out-of-10 chance you'd say hanging with the fish here is pretty great.", availability: true, price: 9700)
island_4 = Island.new(name: "Kauaʻi", location: "Kauaʻi", description: "Located in Hawaii, Kaua'i has emerald mountains, weeping waterfalls, red-rock canyons, jaw-dropping beaches, clear seas and big waves. Yay, you can surf here.", availability: true, price: 3900)
island_5 = Island.new(name: "Capri", location: "Capri", description: "Located in Italy, Capri is an enchanting and picturesque island made of limestone rock. A favorite with Roman emperors, artists, and writers. It's one of the Mediterranean's must-see places.", availability: true, price: 7600)
island_6 = Island.new(name: "Kame House", location: "Solomon Islands", description: "Located in the middle of the sea, Kame House is a house on an island in the sea.  There are some palm trees. ", availability: true, price: 10000)

island_1.user = user_1
island_2.user = user_2
island_3.user = user_3
island_4.user = user_4
island_5.user = user_5
island_6.user = user_6
url = 'https://www.planetware.com/photos-large/SEY/best-islands-seychelles.jpg'
island_1.remote_photo_url = url
url = 'https://www.planetware.com/photos-large/SEY/best-islands-santorini.jpg'
island_2.remote_photo_url = url
url = 'https://www.planetware.com/photos-large/SEY/best-islands-fiji.jpg'
island_3.remote_photo_url = url
url = 'https://www.planetware.com/photos-large/SEY/best-islands-kauai.jpg'
island_4.remote_photo_url = url
url = 'https://www.planetware.com/photos-large/SEY/best-islands-capri.jpg'
island_5.remote_photo_url = url
url = 'https://ae01.alicdn.com/kf/HTB1v0bAb6ihSKJjy0Fiq6AuiFXa6.jpg'
island_6.remote_photo_url = url
island_1.save!
island_2.save!
island_3.save!
island_4.save!
island_5.save!
island_6.save!

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
