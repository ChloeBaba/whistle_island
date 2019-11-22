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

island_1 = Island.new(name: "Paradise Island", location: "Seychelles", slogan: "Majestic seascapes, unparalleled beauty",  description: "Located in the Indian Ocean, Seychelles islands is characterised by majestic seascapes, unparalleled beauty and temperate weather.", availability: true, price: 5400)
island_2 = Island.new(name: "White Isle", location: "Santorini", slogan: "Amazing red and black volcanic beaches", description: "Located in Greece in the heart of the vast Aegean sea, Santorini boasts a unique landscape! The island's beauty speaks for itself. Come rent it out.", availability: true, price: 2800)
island_3 = Island.new(name: "The Castaway Enclave", location: "Fiji", slogan: "Spectacular coral reefs", description: "Located in the South Pacific, If someone asks, 'Are you happy?' What would you say? Well, if you rent Fiji, there is an almost nine-times-out-of-10 chance you'd say hanging with the fish here is pretty great.", availability: true, price: 9700)
island_4 = Island.new(name: "Green Islands", location: "Kauaʻi", slogan: "Emerald mountains, weeping waterfalls", description: "Located in Hawaii, Kaua'i has emerald mountains, weeping waterfalls, red-rock canyons, jaw-dropping beaches, clear seas and big waves. Yay, you can surf here.", availability: true, price: 3900)
island_5 = Island.new(name: "Coco's", location: "Capri", slogan: "Enchanting and picturesque island", description: "Located in Italy, Capri is an enchanting and picturesque island made of limestone rock. A favorite with Roman emperors, artists, and writers. It's one of the Mediterranean's must-see places.", availability: true, price: 7600)
island_6 = Island.new(name: "Kame House", location: "Solomon Islands", slogan: "Nice place to stay", description: "Located in the middle of the sea, Kame House is a house on an island in the sea.  There are some palm trees. ", availability: true, price: 10000)
island_7 = Island.new(name: "Cape Place", location: "Pacific Ocean", slogan: "Pristine beaches, jaw dropping landscapes",  description: "Located in the Indian Ocean, Seychelles islands is characterised by majestic seascapes, unparalleled beauty and temperate weather.", availability: true, price: 9400)
island_8 = Island.new(name: "Victoria", location: "Galapagos", slogan: "Come learn about the turtles", description: "Located in Greece in the heart of the vast Aegean sea, Santorini boasts a unique landscape! The island's beauty speaks for itself. Come rent it out.", availability: true, price: 7900)
island_9 = Island.new(name: "Resting Volcano", location: "Iceland", slogan: "Aurora borealis need we say more?", description: "Located in the South Pacific, If someone asks, 'Are you happy?' What would you say? Well, if you rent Fiji, there is an almost nine-times-out-of-10 chance you'd say hanging with the fish here is pretty great.", availability: true, price: 6800)
island_10 = Island.new(name: "Coral Getaway", location: "North Pole", slogan: "A quite escape. Bring a coat.", description: "Located in Hawaii, Kaua'i has emerald mountains, weeping waterfalls, red-rock canyons, jaw-dropping beaches, clear seas and big waves. Yay, you can surf here.", availability: true, price: 5500)
island_11 = Island.new(name: "Sky Island", location: "The Florida Keys", slogan: "Who needs earth gravity?", description: "Located in Italy, Capri is an enchanting and picturesque island made of limestone rock. A favorite with Roman emperors, artists, and writers. It's one of the Mediterranean's must-see places.", availability: true, price: 8800)
island_12 = Island.new(name: "Crab Key", location: "Italy", slogan: "Amazing and picturesque island", description: "Located in the middle of the sea, Kame House is a house on an island in the sea.  There are some palm trees. ", availability: true, price: 10000)

puts "testing"
island_1.user = user_1
puts "user_1"

island_2.user = user_2
puts "user_2"
island_3.user = user_3
puts "user_3"
island_4.user = user_4
puts "user_4"
island_5.user = user_5
puts "user_5"
island_6.user = user_6
puts "user_6"
island_7.user = user_1
puts "user_1"

island_8.user = user_2
puts "user_2"
island_9.user = user_3
puts "user_3"
island_10.user = user_4
puts "user_4"
island_11.user = user_5
puts "user_5"
island_12.user = user_6





url1 = 'https://www.planetware.com/photos-large/SEY/best-islands-seychelles.jpg'
island_1.remote_photo_url = url1
url2 = 'https://www.planetware.com/photos-large/SEY/best-islands-santorini.jpg'
island_2.remote_photo_url = url2
url3 = 'https://www.planetware.com/photos-large/SEY/best-islands-fiji.jpg'
island_3.remote_photo_url = url3
url4 = 'https://www.planetware.com/photos-large/SEY/best-islands-kauai.jpg'
island_4.remote_photo_url = url4
url5 = 'https://www.planetware.com/photos-large/SEY/best-islands-capri.jpg'
island_5.remote_photo_url = url5
url6 = 'https://ae01.alicdn.com/kf/HTB1v0bAb6ihSKJjy0Fiq6AuiFXa6.jpg'
island_6.remote_photo_url = url6
url7= 'https://www.planetware.com/photos-large/SEY/best-islands-santorini.jpg'
island_7.remote_photo_url = url7
url8 = 'https://media.expedia.com/media/content/shared/images/travelguides/Bay-of-Islands-6024124-smallTabletRetina.jpg'
island_8.remote_photo_url = url8
url9 = 'https://www.elitereaders.com/wp-content/uploads/2015/10/naturally-shaped-islands-5.jpg'
island_9.remote_photo_url = url9
url10 = 'https://www.privateislandsonline.com/uploads/586834eee7fe6.jpg'
island_10.remote_photo_url = url10
url11 = 'https://www.myoutislands.com/public_docs/destination/content/exumas551-orig.jpg'
island_11.remote_photo_url = url11
url12 = 'http://true-beachfront.com/media/cache/f5/2c/f52cdbec9f5b98d9c1b7acad74e1220d.jpg'
island_12.remote_photo_url = url12


island_1.save!
island_2.save!

island_3.save!

island_4.save!

island_5.save!

island_6.save!

island_7.save!



island_8.save!
island_9.save!
island_10.save!
island_11.save!
island_12.save!



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
