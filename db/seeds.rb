# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Booking.destroy_all
puts '...Destroy bookings done... '
Boat.destroy_all
puts '...Destroy boats done... '
User.destroy_all

puts 'Creating users...'

user_1 = User.create!(password: '123456', email: 'petra_elandersson@yahoo.com',
                      user_pic_url: 'https://kitt.lewagon.com/placeholder/users/pzyee')
user_2 = User.create!(password: '123456', email: 'depersson81@gmail.com',
                      user_pic_url: 'https://kitt.lewagon.com/placeholder/users/depersson')
user_3 = User.create!(password: '123456', email: 'nigrell@gmail.com',
                      user_pic_url: 'https://kitt.lewagon.com/placeholder/users/leniglnn')
user_4 = User.create!(password: '123456', email: 'oscarnilestam@gmail.com',
                      user_pic_url: 'https://kitt.lewagon.com/placeholder/users/oscnil')
user_5 = User.create!(password: '123456', email: 'atmosfeer@gmail.com',
                      user_pic_url: 'https://kitt.lewagon.com/placeholder/users/atmosfeer')

puts 'Creating boats...'

puts '1st boat...'
url = "https://images.unsplash.com/photo-1520255870062-bd79d3865de7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80"
boat = Boat.new(boat_name: 'Nautique G21', description: "The Nautique G21 will take your from a to b, but a lot faster than all the other buckets in the pond!", nbr_beds: 2, day_price: 100, owner: user_1)
boat.remote_photo_url = url
boat.save!
puts '...with bookings.'
booking1 = Booking.new(start_date: Date.parse('17/9/2019'), end_date: Date.parse('19/9/2019'))
booking1.consumer = user_2
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('20/9/2019'), end_date: Date.parse('23/9/2019'))
booking1.consumer = user_3
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('24/9/2019'), end_date: Date.parse('27/9/2019'))
booking1.consumer = user_4
booking1.boat = boat
booking1.save!
puts '2nd boat...'
url = "https://images.unsplash.com/photo-1543226589-72c4686b9cd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
boat = Boat.new(boat_name: 'BA 64', description: "Older boat with a lot of charm. Might need some love, but love given is love received. Consider all the poor souls out there with no love... makes you think, huh?", nbr_beds: 40, day_price: 150, owner: user_1)
boat.remote_photo_url = url
boat.save!
puts '...with bookings.'
booking1 = Booking.new(start_date: Date.parse('17/9/2019'), end_date: Date.parse('19/9/2019'))
booking1.consumer = user_3
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('20/9/2019'), end_date: Date.parse('23/9/2019'))
booking1.consumer = user_4
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('24/9/2019'), end_date: Date.parse('27/9/2019'))
booking1.consumer = user_2
booking1.boat = boat
booking1.save!
puts '3rd boat...'
url = "https://images.unsplash.com/photo-1445623168371-714eea2f2833?ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80"
boat = Boat.new(boat_name: 'Jayne Silver', description: "Rent our lovely lady. She will be kind as a mother, spacious as a barn and sailing will be as smooth as a baby's butt.", nbr_beds: 8, day_price: 1000, owner: user_2)
boat.remote_photo_url = url
boat.save!
puts '...with bookings.'
booking1 = Booking.new(start_date: Date.parse('17/10/2019'), end_date: Date.parse('19/10/2019'))
booking1.consumer = user_3
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('20/10/2019'), end_date: Date.parse('23/10/2019'))
booking1.consumer = user_4
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('24/10/2019'), end_date: Date.parse('27/10/2019'))
booking1.consumer = user_1
booking1.boat = boat
booking1.save!

puts '4th boat...'
url = "https://images.unsplash.com/photo-1542902980-8f2b7b1c2af3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80"
boat = Boat.new(boat_name: 'Fishing boat', description: "Rent our fishing boat and go catch your own fresh fish in the morning.", nbr_beds: 2, day_price: 100, owner: user_3)
boat.remote_photo_url = url
boat.save!
puts '...with bookings.'
booking1 = Booking.new(start_date: Date.parse('17/07/2019'), end_date: Date.parse('19/07/2019'))
booking1.consumer = user_2
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('20/07/2019'), end_date: Date.parse('23/07/2019'))
booking1.consumer = user_4
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('24/07/2019'), end_date: Date.parse('27/07/2019'))
booking1.consumer = user_1
booking1.boat = boat
booking1.save!

puts '5th boat...'
url = "https://robbreportedit.files.wordpress.com/2018/04/grand-craft-super-sport.jpg"
boat = Boat.new(boat_name: 'Model-Craft', description: "Go exploring or be your very own taxi captain. This baby is likley to attract the business of people like George Clooney.", nbr_beds: 0, day_price: 90, owner: user_4)
boat.remote_photo_url = url
boat.save!
puts '...with bookings.'
booking1 = Booking.new(start_date: Date.parse('17/08/2019'), end_date: Date.parse('19/08/2019'))
booking1.consumer = user_2
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('20/08/2019'), end_date: Date.parse('23/08/2019'))
booking1.consumer = user_3
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('24/12/2019'), end_date: Date.parse('27/12/2019'))
booking1.consumer = user_1
booking1.boat = boat
booking1.save!

puts '6th boat...'
url = "https://images.bvimedia.ca/vehicles/photos/08/97/089716_2018_regal_Deck_Boats_24_Fasdeck_RX.jpg?640x400"
boat = Boat.new(boat_name: 'Boston Whaler', description: "The Boston Whaler CF 8449 RX. A quick and fun boat for short outings.", nbr_beds: 0, day_price: 60, owner: user_5)
boat.remote_photo_url = url
boat.save!
puts '...with bookings.'
booking1 = Booking.new(start_date: Date.parse('17/01/2020'), end_date: Date.parse('19/01/2020'))
booking1.consumer = user_2
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('20/01/2020'), end_date: Date.parse('23/01/2020'))
booking1.consumer = user_3
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('24/02/2020'), end_date: Date.parse('27/02/2020'))
booking1.consumer = user_1
booking1.boat = boat
booking1.save!

puts '7th boat...'
url = "https://img-new.cgtrader.com/items/837835/5fd0e3f394/venetian-gondola-3d-model-max.jpg"
boat = Boat.new(boat_name: 'Gondola', description: "For those romantic trips. Oarsman not included, he wouldn't work with me no more, said his wife got a job in Oman, good luck finding an oarsman's gig there!", nbr_beds: 0, day_price: 10, owner: user_5)
boat.remote_photo_url = url
boat.save!
puts '...with bookings.'
booking1 = Booking.new(start_date: Date.parse('17/06/2020'), end_date: Date.parse('19/06/2020'))
booking1.consumer = user_2
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('20/07/2020'), end_date: Date.parse('23/07/2020'))
booking1.consumer = user_3
booking1.boat = boat
booking1.save!
booking1 = Booking.new(start_date: Date.parse('24/08/2020'), end_date: Date.parse('27/08/2020'))
booking1.consumer = user_1
booking1.boat = boat
booking1.save!

####################

puts '8th boat...'
url = "https://images.unsplash.com/photo-1540946485063-a40da27545f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
boat = Boat.new(boat_name: 'Sailboat', description: "Rent our lovely boat to go sailing. Sailing requires wind, predicting wind requires meteorological skills, I wish there was an app for that! Am I right, ladies? And, well, gents?", nbr_beds: 2, day_price: 10, owner: user_3)
boat.remote_photo_url = url
boat.save!


puts '9th boat...'
url = "https://images.unsplash.com/photo-1531339751961-324b4c494be9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80"
boat = Boat.new(boat_name: 'Windrush II', description: "Fast like the wind this boat will give you a head rush.", nbr_beds: 2, day_price: 10, owner: user_1)
boat.remote_photo_url = url
boat.save!


puts '10th boat...'
url = "https://images.unsplash.com/photo-1558482877-26430d09215e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80"
boat = Boat.new(boat_name: 'SoNice', description: "Rent our very nice yacht. Nevermind that flag, we have plenty of varieties, European, Polynesian, you name it!", nbr_beds: 2, day_price: 10, owner: user_2)
boat.remote_photo_url = url
boat.save!


puts '11th boat...'
url = "https://images.unsplash.com/photo-1527431293370-0cd188ca5d15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80"
boat = Boat.new(boat_name: 'Sailboat', description: "Rent our very nice sailboat. We named it Sailboat because, well you get it, and you pay for those stickers by the letter. Anyway, it's for sailing.", nbr_beds: 4, day_price: 10, owner: user_3)
boat.remote_photo_url = url
boat.save!

puts '12th boat...'
url = "https://images.unsplash.com/photo-1526369956368-fead97fe0f28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80"
boat = Boat.new(boat_name: 'Raw Hide', description: "Our Raw Hide is a great boat that you won't be dissapointed in.", nbr_beds: 2, day_price: 10, owner: user_5)
boat.remote_photo_url = url
boat.save!

puts '13th boat...'
url = "https://images.unsplash.com/photo-1545992311-cee340fc6011?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1060&q=80"
boat = Boat.new(boat_name: 'Clipper', description: "Avast yee! Skurvey not included! What is dead may never die! Land lubbers beware! Salt and crackers for everyone!", nbr_beds: 2, day_price: 10, owner: user_3)
boat.remote_photo_url = url
boat.save!

puts '14th boat...'
url = "https://images.unsplash.com/photo-1504512318810-43062e38329b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
boat = Boat.new(boat_name: 'MonaLisa', description: "Charming boat for hot summer sailing. Sun screen people!!! Trust me on the sun screen.", nbr_beds: 2, day_price: 10, owner: user_5)
boat.remote_photo_url = url
boat.save!

puts '15th boat...'
url = "https://images.unsplash.com/photo-1540660931770-fa5a249c7614?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2091&q=80"
boat = Boat.new(boat_name: 'PM-1-500', description: "Go sailing in our lovely boat for rent. There is no shame in renting, you would rent a movie wouldn't you? So why not our boat?", nbr_beds: 4, day_price: 15, owner: user_1)
boat.remote_photo_url = url
boat.save!

puts '16th boat...'
url = "https://images.unsplash.com/photo-1515471216966-c8521f081224?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80"
boat = Boat.new(boat_name: 'NightHawk', description: "Fore those lovely evening voyages. Comme ci comme ça, bonjour, panaeu, le chevalle parle!", nbr_beds: 2, day_price: 10, owner: user_2)
boat.remote_photo_url = url
boat.save!

puts '17th boat...'
url = "https://images.unsplash.com/photo-1535024966840-e7424dc2635b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=333&q=80"
boat = Boat.new(boat_name: 'Yacht', description: "Win the race in our great sailboat. And when we say race, we literally mean any race, caucasian, polynesian, you name it! ", nbr_beds: 4, day_price: 20, owner: user_3)
boat.remote_photo_url = url
boat.save!
puts 'Finished!'

