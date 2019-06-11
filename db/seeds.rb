# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Boat.destroy_all
User.destroy_all

puts 'Creating users...'

user_1 = User.create!(password: '123456', email: 'petra_elandersson@yahoo.com')
user_2 = User.create!(password: '123456', email: 'depersson81@gmail.com')
user_3 = User.create!(password: '123456', email: 'nigrell@gmail.com')
user_4 = User.create!(password: '123456', email: 'oscarnilestam@gmail.com')

puts 'Creating pictures...'

url = "https://images.unsplash.com/photo-1520255870062-bd79d3865de7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80"
picture = Boat.new(boat_name: 'Nautique G21', description: "The Nautique G21 will take your from a to b, but a lot faster than all the other buckets in the pond!", nbr_beds: 2, day_price: 100, owner: user_1)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1543226589-72c4686b9cd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
picture = Boat.new(boat_name: 'BA 64', description: "Older boat with a lot of charm. Might need some love.", nbr_beds: 40, day_price: 150, owner: user_1)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1445623168371-714eea2f2833?ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80"
picture = Boat.new(boat_name: 'Jayne Silver', description: "Rent our lovely lady. She will be kind as a mother, spacious as a barn and sailing will be as smooth as a baby's butt.", nbr_beds: 8, day_price: 1000, owner: user_2)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1542902980-8f2b7b1c2af3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80"
picture = Boat.new(boat_name: 'Fishing boat', description: "Rent our fishing boat and go catch your own fresh fish in the morning.", nbr_beds: 2, day_price: 100, owner: user_3)
picture.remote_photo_url = url
picture.save!

url = "https://robbreportedit.files.wordpress.com/2018/04/grand-craft-super-sport.jpg"
picture = Boat.new(boat_name: 'Model-Craft', description: "Go exploring or be your very own taxi captain. This baby is likley to attract the business of people like George Clooney.", nbr_beds: 0, day_price: 90, owner: user_4)
picture.remote_photo_url = url
picture.save!

url = "https://images.bvimedia.ca/vehicles/photos/08/97/089716_2018_regal_Deck_Boats_24_Fasdeck_RX.jpg?640x400"
picture = Boat.new(boat_name: 'Boston Whaler', description: "The Boston Whaler CF 8449 RX. A quick and fun boat for short outings.", nbr_beds: 0, day_price: 60, owner: user_4)
picture.remote_photo_url = url
picture.save!

url = "https://img-new.cgtrader.com/items/837835/5fd0e3f394/venetian-gondola-3d-model-max.jpg"
picture = Boat.new(boat_name: 'Gondola', description: "For those romantic trips. Oarsman not included.", nbr_beds: 0, day_price: 10, owner: user_4)
picture.remote_photo_url = url
picture.save!


puts 'Finished!'
