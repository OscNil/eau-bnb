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
picture = Boat.new(boat_name: 'Nautique G21', description: "The Nautique G21 have all the amenities.", owner: user_1)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1543226589-72c4686b9cd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
picture = Boat.new(boat_name: 'BA 64', description: "Older boat with a lot of charm. Might need some love.", owner: user_1)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1445623168371-714eea2f2833?ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80"
picture = Boat.new(boat_name: 'Jayne Silver', description: "Rent our lovely lady.", owner: user_2)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1542902980-8f2b7b1c2af3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80"
picture = Boat.new(boat_name: 'Fishing boat', description: "Rent our fishing boat to go out get your own fresh fish in the morning.", owner: user_3)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1544119154-ef19cd315b7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
picture = Boat.new(boat_name: 'Amazon', description: "Go exploring with our lovely Amazon.", owner: user_4)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1544119154-ef19cd315b7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
picture = Boat.new(boat_name: 'Boston Whaler CF 8449 RX', description: "A quick and fun boat for short outings.", owner: user_4)
picture.remote_photo_url = url
picture.save!

url = "https://images.unsplash.com/photo-1543886402-0a245360b84d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
picture = Boat.new(boat_name: 'Gondola', description: "For those romantic trips. Driver not included.", owner: user_4)
picture.remote_photo_url = url
picture.save!


puts 'Finished!'
