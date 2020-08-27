# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Mission.destroy_all
Charity.destroy_all
User.destroy_all
puts 'Creating users...'
user_charity1 = User.new(first_name: "Emma", last_name: "Jones", email: "emma@mail.com", password: "123456")
user_charity1.save!
user_charity2 = User.new(first_name: "Sam", last_name: "Smith", email: "sam@mail.com", password: "123456")
user_charity2.save!
user_volunteer1 = User.new(first_name: "Bella", last_name: "Parry", email: "bella@mail.com", password: "123456")
user_volunteer1.save!
puts 'Finished!'



puts 'Creating Charities...'
charity1 = Charity.new(user: user_charity1 , name: "Crisis", phone_number: "0300 636 1967", description:"We are the national charity for homeless people. We help people directly out of homelessness and campaign for the changes needed to solve it altogether. Find out more about ending homelessness" , website: "www.crisis.org.uk")
charity1.save!

charity2  = Charity.new(user: user_charity2, name: "Emmaus", phone_number: "0300 303 7555", description:"We supports more than 800 formerly homeless people. We provide them with support, a home for as long as they need it and meaningful work and training in our social enterprises." , website: "emmaus.org.uk")
charity2.save!

puts 'Finished!'

puts 'Creating missions...'

windermere = Mission.new(charity: charity1, title:"Windermere Retail Volunteer" , description: "Our shops help raise lots of money for children living in the UK and in 120 countries worldwide. It’s always lovely chatting to our customers about the fabulous items we sell and telling them about the fantastic work that Save the Children does. You’ll get the chance to meet new people and make friends plus you’ll be part of an amazing team of volunteers. Your donation of time, creativity and kindness will help us change the world - via fabulous fashion and sustainable shopping!
There’s so much for you to get stuck in to when you’re volunteering in our shops. We get lots of donations and it's always exciting when one of our volunteers spots a real gem. You'll be taking in, sorting, steaming and pricing donations, rolling up your sleeves in the backroom as well as being on the shop floor.
Serving customers with a smile is so important. You’ll be using the till (don't worry, we'll show you how) and handling money. And when people come in to donate items you'll also be completing the Gift Aid forms that let their donations help us even more.
It’s really important that our window and shop displays look appealing so people keep visiting our shops. So you'll be wielding a duster and vacuum as well as your imagination to make the shop look its best.
It would be ideal if you could volunteer one shift a week, which is about four hours but we're also happy to have more flexible times. No special skills are needed as we’ll show you what to do and we provide all the training you’ll need. But if you have any experience or particular interest tell us, it may come in useful. It’s really easy to get your volunteering started.
If you're over 18 years old, just click on ‘Apply’ and get filling in your details!",
address: "37 Crescent Rd, Windermere LA23 1BL" , number_of_volunteers: 3, start_date: DateTime.new(2020,5,13))
windermere.save!

trussell = Mission.new(charity: charity1, title:"Time for Trussell (Home Based)" , description: "Volunteer your time from Home, as a Time for Trussell volunteer. This pandemic is an unprecedented challenge presenting huge additional pressure on already overstretched resources. Whether you have 5 minutes or 5 hours, you can make a difference.",
address: "37 Crescent Rd, Windermere LA23 1BL" , number_of_volunteers: 6, start_date: DateTime.new(2020,3,02))
trussell.save!

fareshare = Mission.new(charity: charity2, title:"Driver for FareShare", description: "A standard driving licence is all you need to deliver our food once or twice a week to children’s clubs, homeless hostels and refuges in your area. We’ve got the vans, we just need you!
What will I be doing? You will be the vital link between us and the charities, getting the food to where it’s needed
Dropping off the weekly orders of food at local charities and collecting surplus from local food businesses with the help of a Driver’s Assistant
You’ll be the friendly face of FareShare interacting with the charities, making sure they get the food they need
Working with other volunteers to load up the van with daily deliveries before you head out",
address: "Home Based" , number_of_volunteers: 1, start_date: DateTime.new(2020,9,01))
fareshare.save!

puts 'Finished!'
