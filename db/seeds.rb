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
user_volunteer1 = User.new(first_name: "Bella", last_name: "Parry", email: "bella@mail.com", password: "123456")
user_volunteer1.save!
user_charity1 = User.new(first_name: "Emma", last_name: "Jones", email: "emma@mail.com", password: "123456")
user_charity1.save!
user_charity2 = User.new(first_name: "Sam", last_name: "Smith", email: "sam@mail.com", password: "123456")
user_charity2.save!
user_royalparkfoundation = User.new(first_name: "Royal", last_name: "Park", email: "rpf@mail.com", password: "123456")
user_royalparkfoundation.save!
user_independentage = User.new(first_name: "Age", last_name: "In", email: "indage@mail.com", password: "123456")
user_independentage.save!
user_lifelinekids = User.new(first_name: "kids", last_name: "life", email: "kidslife@mail.com", password: "123456")
user_lifelinekids.save!
user_feministlib = User.new(first_name: "Femme", last_name: "lib", email: "femlib@mail.com", password: "123456")
user_feministlib.save!
user_shout = User.new(first_name: "shout", last_name: "now", email: "shout@mail.com", password: "123456")
user_shout.save!
user_housecompliment = User.new(first_name: "House", last_name: "Comp", email: "housecompliment@mail.com", password: "123456")
user_housecompliment.save!
user_foodcycle = User.new(first_name: "Food", last_name: "Cycle", email: "foodcycle@mail.com", password: "123456")
user_foodcycle.save!
user_bookmark = User.new(first_name: "Book", last_name: "Mark", email: "bookmark@mail.com", password: "123456")
user_bookmark.save!
user_familyaction = User.new(first_name: "Action", last_name: "Family", email: "familyaction@mail.com", password: "123456")
user_familyaction.save!
user_baytreecentre = User.new(first_name: "Bay", last_name: "Tree", email: "baytree@mail.com", password: "123456")
user_baytreecentre.save!
user_dressforsuccess = User.new(first_name: "Dress", last_name: "Success", email: "dressforsuccess@mail.com", password: "123456")
user_dressforsuccess.save!
user_londonwildlifetrust = User.new(first_name: "wild", last_name: "trust", email: "ldnwildlifetrust@mail.com", password: "123456")
user_londonwildlifetrust.save!
user_britishheartfoundation = User.new(first_name: "heart", last_name: "found", email: "britishheartfound@mail.com", password: "123456")
user_britishheartfoundation.save!
user_battersea = User.new(first_name: "batter", last_name: "sea", email: "battersea@mail.com", password: "123456")
user_battersea.save!
user_kidsnetwork = User.new(first_name: "kids", last_name: "network", email: "kidsnetwork@mail.com", password: "123456")
user_kidsnetwork.save!
puts 'Finished!'



puts 'Creating Charities...'
charity1 = Charity.new(user: user_charity1 , name: "Crisis", phone_number: "0300 636 1967", description:"We are the national charity for homeless people. We help people directly out of homelessness and campaign for the changes needed to solve it altogether. Find out more about ending homelessness" , website: "www.crisis.org.uk")
charity1.save!

charity2 = Charity.new(user: user_charity2, name: "Emmaus", phone_number: "0300 303 7555", description:"We supports more than 800 formerly homeless people. We provide them with support, a home for as long as they need it and meaningful work and training in our social enterprises." , website: "emmaus.org.uk")
charity2.save!

royalparkfoundation  = Charity.new(user: user_royalparkfoundation, name: "Royal Park Foundation", phone_number: "020 7298 2000", description:"With 500 years of history, the 5,000 acres of the Royal Parks are home to avenues of veteran oaks and shelter rare species of wildlife. They feature listed landscapes, protected views and important national monuments and offer boating lakes, wildflower meadows, sports pitches and popular children’s playgrounds. All of these give the Royal Parks’ 77 million visitors a year their own magical experience to share." , website: "http://www.supporttheroyalparks.org/")
royalparkfoundation.save!

independantage = Charity.new(user: user_independentage, name: "Independent Age", phone_number: "020 7605 4200", description:"Whatever happens as we get older, we all want to remain independent and live life on our own terms. That's why, as well as offering regular friendly contact and a strong campaigning voice, Independent Age provides older people and their families with clear, free and impartial advice on the issues that matter: care and support, money and benefits, helath and mobility. A charity founded over 150 years ago, we're independent so older people can be." , website: "http://www.independentage.org")
independantage.save!

lifeline4kids = Charity.new(user:user_lifelinekids, name: "Lifeline 4 Kids", phone_number: "020 7794 1661", description:"We are a UK national children's charity established in 1961. Originally known as The Handicapped Children's Aid Committee, our working name changed to Lifeline 4 Kids in 2000. We help children throughout the UK and occasionally abroad. Our members work on an entirely voluntary basis and we have no paid staff or fundraiser. Lifeline 4 kids provides essential equipment to help improve the quality of life for children with disabilities and special needs." , website: "http://www.lifeline4kids.org/")
lifeline4kids.save!

feministlibrary = Charity.new(user:user_feministlib, name: "Feminist Library", phone_number: "0207 261 0879", description:"The Feminist Library is a large archive collection of feminist literature, particularly Women’s Liberation Movement materials dating from the late 1960s to the 1990s. We support research, activist and community projects in this field.
The Library is also an autonomous feminist community space. The Library is trans-inclusive, welcomes visitors of any gender, does not require registration or membership, and provides an intersectional, non-sectarian space for the exploration of feminism." , website: " http://feministlibrary.co.uk/")
feministlibrary.save!

shout = Charity.new(user:user_shout, name: "Shout", phone_number: "020 7605 4200", description:"Shout is a 24/7 UK crisis text service available for times when people feel they need immediate support.
By texting ‘SHOUT’ to ‘85258’ a Texter will be put in touch with a trained Crisis Volunteer (CV) who will chat to them using trained techniques via text. The service is designed to help individuals to think more clearly and to take their next steps to feeling better. Shout was publicly launched in May 2019, after a year long pilot phase. It is based on the successful US model Crisis Text Line. Shout is part of Mental Health innovations (MHI), which was founded in November 2017. MHI was set up following the success of The Royal Foundation’s ‘Heads Together’ campaign, which identified how utilising digital platforms and tools has huge potential to offer support services to individuals struggling with their mental health." , website: " https://www.giveusashout.org/")
shout.save!

complimentshouse = Charity.new(user: user_housecompliment, name: "Compliments of the House", phone_number: "07855 242918", description:"We’re building a sustainable community fuelled by love, a passion for being smart with the planet’s resources and a shared belief that we can all give a hand up to someone who needs it. So how do we do it? We take surplus food from our Houses (food donors) and bring it to share with our CoTH community at our Hubs. So people who can’t afford to buy food can connect over tasty meals. The food is collected and served by our CoTH Volunteers. Some of them are guests who we’ve trained to be part of our team. Once they’re ready to go back to work, we arrange 12-week, part-time placements for them with our food partners. If it’s a good fit, it can turn into a permanent job. We call this process a circle of efficiency." , website: "https://complimentsofthehouse.org/")
complimentshouse.save!

foodcycle = Charity.new(user:user_foodcycle, name: "Food Cycle", phone_number: "020 7729 2775", description:"We support people who are hungry and lonely by serving tasty lunches and dinners every single day in towns and cities across the country.  Many of our guests struggle to afford the basics to eat and many will eat alone without company or conversation. Over the past few months, we’ve had to change the way we support our guests and run our Projects.  Some services are ‘On pause’ but where possible, volunteers have been delivering food parcels, and over the coming months these will become our Cook and collect takeaway service. Unable to bring people together, we have also launched Check-in and chat, where volunteers call guests for a little natter." , website: "https://www.foodcycle.org.uk/")
foodcycle.save!

bookmark = Charity.new(user:user_bookmark, name: "Bookmark", phone_number: "020 3995 7960", description:"380,000 children have been stuck in lockdown without a single book. As a Bookmark online volunteer, you’ll do something incredible and change a child’s story. We’ve had a huge level of interest from schools who would like us to help their pupils catch up with their reading in the Autumn Term. We have also been overwhelmed with the level of interest in volunteering, so please be aware that it might take us a little longer than normal to process your application. However, as each volunteer is the difference between a child getting reading support and  a child falling behind with their learning, we really do need your help." , website: "https://www.bookmarkreading.org/")
bookmark.save!

familyaction = Charity.new(user:user_familyaction, name: "Family Action", phone_number: "020 7254 6251", description:"Family Action works to tackle some of the most complex and difficult issues facing families today – including financial hardship, mental health problems, social isolation, learning disabilities, domestic abuse, or substance misuse and alcohol problems.
These issues can have a huge impact on the stability of family life, and will have a significant impact on the health, wellbeing and development of all family members." , website: "https://www.family-action.org.uk/get-involved/volunteer/")
familyaction.save!


baytreecentre = Charity.new(user: user_baytreecentre, name: "Bay Tree Centre", phone_number: "0207 733 5283", description:"The Baytree Centre is a social inclusion charity (Registered Charity No 1175145) for women and girls based in the heart of Brixton, London.
Those who access the Centre face multiple barriers to inclusion, identified by the women and girls themselves as: lack of English language skills; lack of opportunities to learn in culturally appropriate settings; inability to access employment opportunities; poverty; poor housing; isolation; depression; racism and discrimination (including religious discrimination); abusive homes; family breakdown and a lack of family support and structure. The services we have developed for our clients focus on education, training, employment, health and social support measures in order to enhance confidence and self esteem and to promote aspirations, community cohesion and cultural harmony." , website: "https://www.baytreecentre.org/")
baytreecentre.save!

dressforsuccess = Charity.new(user:user_dressforsuccess, name: "Dress for Success", phone_number: "0203 773 7279", description:"With a mission to empower women into the workplace, Dress for Success helps disadvantaged women by providing professional clothing and styling, interview coaching and ongoing support. We help women to get back into the workplace by preparing them for an upcoming job interview. Our intervention is simple; we deliver a one-to-one styling session and provide clothing to help her feel confident and boost self-esteem. We then deliver an interview preparation session with one of our volunteer interview coaches who will enable them to perfect their interview techniques and be ready for the real thing. Our clients in 2017 felt an average of 29% more confident for their job interview as a result of our simple intervention, and 98.4% of clients were happy with their appointment." , website: "https://www.dressforsuccessgl.org/")
dressforsuccess.save!

londonwildlifetrust = Charity.new(user:user_londonwildlifetrust, name: "London Wildlife Trust", phone_number: "020 7261 0447", description:" London Wildlife Trust is a driving force for nature conservation across the capital. With our dedicated supporters and volunteers, we work tirelessly to protect wildlife across London. We take action every day to help wildlife flourish through practical conservation work; we engage, inspire and enable people to connect with nature; and through campaigns and consultancy we give wildlife a voice. We can’t do any of this without our members and volunteers, who help make sure that nature can thrive across London, now and in the future." , website: " https://www.wildlondon.org.uk/volunteer-with-us")
londonwildlifetrust.save!

britishheartfoundation = Charity.new(user:user_britishheartfoundation, name: "British Heart Foundation", phone_number: "08001386556", description:" The British Heart Foundation (BHF) funds over £100 million of research each year into all heart and circulatory diseases and the things that cause them – looking into heart disease, strokes, dementia and diabetes. BHF shops are a great way to get involved as they are dotted around local communities across London" , website: "https://www.bhf.org.uk/")
britishheartfoundation.save!

battersea = Charity.new(user:user_battersea, name: "Battersea", phone_number: "0300 323 1216 ", description:"Battersea is here for every dog and cat, and has been since 1860. We believe that every dog and cat deserves the best. That's why we help every dog and cat in need – whether it's newly born or getting on, cute or cute in its own way. Find out more about our work and how we care for over 7,000 animals every year." , website: "https://www.battersea.org.uk/")
battersea.save!

kidsnetwork = Charity.new(user:user_kidsnetwork, name: "Kids Network," phone_number: "07378311397", description:"The Kids Network is looking for committed, fun and passionate volunteers who live or work in Hammersmith & Fulham, to make a difference to the children of London. Our structured mentoring programme supports 8 -11 year old's, based in Hammersmith & Fulham, at weekends with their social and emotional development before they transition into secondary school." , website: "https://thekidsnetwork.org.uk/")
kidsnetwork.save!
puts 'Finished!'



puts 'Creating missions...'

windermere = Mission.new(charity: charity1, title:"Windermere Retail Volunteer" , description: "Our shops help raise lots of money for children living in the UK and in 120 countries worldwide. It’s always lovely chatting to our customers about the fabulous items we sell and telling them about the fantastic work that Save the Children does. You’ll get the chance to meet new people and make friends plus you’ll be part of an amazing team of volunteers. Your donation of time, creativity and kindness will help us change the world - via fabulous fashion and sustainable shopping!
There’s so much for you to get stuck in to when you’re volunteering in our shops. We get lots of donations and it's always exciting when one of our volunteers spots a real gem. You'll be taking in, sorting, steaming and pricing donations, rolling up your sleeves in the backroom as well as being on the shop floor.
Serving customers with a smile is so important. You’ll be using the till (don't worry, we'll show you how) and handling money. And when people come in to donate items you'll also be completing the Gift Aid forms that let their donations help us even more.
It’s really important that our window and shop displays look appealing so people keep visiting our shops. So you'll be wielding a duster and vacuum as well as your imagination to make the shop look its best.
It would be ideal if you could volunteer one shift a week, which is about four hours but we're also happy to have more flexible times. No special skills are needed as we’ll show you what to do and we provide all the training you’ll need. But if you have any experience or particular interest tell us, it may come in useful. It’s really easy to get your volunteering started.
If you're over 18 years old, just click on ‘Apply’ and get filling in your details!",
address: "37 Crescent Rd, Windermere LA23 1BL" , number_of_volunteers: 3, start_date: DateTime.new(2020,10,13))
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
