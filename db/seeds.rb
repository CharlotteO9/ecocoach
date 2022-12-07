puts 'cleaning seniorities'
Seniority.destroy_all

puts "cleaning users"
User.destroy_all

puts "cleaning users"
Challenge.destroy_all

puts "cleaning event"
Event.destroy_all

puts 'creating seniorities'

seniority1 = Seniority.create!(
  name: "Little seed",
  description: "Hello little seed, I am happy to see you. You want to change your habits, you can be proud of you. EcoCoach will help you!",
  ranking: 0
)
seniority2 = Seniority.create!(
  name: "Beautiful flower",
  description: "Congratulations, you became a beautiful flower! You are on your way to becoming a real eco-citizen, don't give up!!",
  ranking: 1
)
seniority3 = Seniority.create!(
  name: "Giant sequoia",
  description: "Here we are, it's the last step, you come a long way! EcoCoach is so proud of you!!",
  ranking: 2
)

puts 'creating user'

user1 = User.create!(
  username: "william-eco",
  email: "william@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/115219328?v=4",
  seniority: seniority2
)

user2 = User.create!(
  username: "pauline-eco",
  email: "pauline@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/106176972?v=4",
  seniority: seniority1
)

user3 = User.create!(
  username: "anne-eco",
  email: "anne@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/109987907?v=4",
  seniority: seniority3
)

user4 = User.create!(
  username: "charlotte-eco",
  email: "charlotte@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/110730954?v=4",
  seniority: seniority1
)

puts 'creating little seed challenges'

challenge_food1 = Challenge.create!(
  name: 'Season Vegetables race',
  description: "Only purchase local fruits and vegetables that are of the season.
  It simply means you choose food that's grown locally.
  Locally grown, seasonal food has the biggest benefit for the planet,
  as it takes less resources to transport and store your food.
  Did you know transporting food by air generates 177 times more greenhouse gases than shipping it?",
  category: 'Food',
  seniority: seniority1
)
challenge_transport1 = Challenge.create!(
  name: 'I want to ride my bicycle',
  description: "Choose the bike instead of car or public transport. Using a bike is always the best way to stay fit and keep our carbon footprint at the lowest,
  it's 21g of CO2/km,that's 4,5 times less than the car. Ready?",
  category: 'Transport',
  seniority: seniority1
)
challenge_energy1 = Challenge.create!(
  name: 'Shower fast & dry',
  description: "Low-down your shower to up to 5 minutes max will allow you to save liters of water.
  And that's not it: you could save around €95 a year for your energy bills.",
  category: 'Energy',
  seniority: seniority1
)
challenge_purchase1 = Challenge.create!(
  name: 'Taking it slow (fashion)',
  description: "Only buy from slow fashion brand. Fast fashion is destined for a short life – it’s created for temporary wear.
   The effect of fast fashion is huge not only for the psyche of the individual
  but for the environment and its workers as well.
  Fast fashion is known for its bad working conditions for its employees.
  Fast fashion companies are frequently accused of exploiting their workers
   and paying very cheap wages in order to earn a profit. ",
  category: 'Purchase',
  seniority: seniority1
)
challenge_waste1 = Challenge.create!(
  name: "Wastes are SORT of a big deal",
  description: "Sort your waste by using the correct bin for each waste.",
  category: 'Waste',
  seniority: seniority1
)

puts 'creating beautiful flower challenges'

challenge_food2 = Challenge.create!(
  name: 'Deliveries break',
  description: "Reduce food deliveries as much as possible to reduce transportation(CO2) and packaging",
  category: 'Food',
  seniority: seniority2
)
challenge_transport2 = Challenge.create!(
  name: 'Carpooling',
  description: "Never travel alone in a car: share rides. Carpooling helps to alleviate road traffic and reduce travel costs.
  In 2018, more than 270,000 tons of CO2 were avoided in France thanks to long-distance carpooling.
  Unfortunately, this practice still represents only 3% of daily trips. For a distance of 15 km,
  carpooling amounts to 1095 gCO2e, it's 67% less than a solo trip by car.",
  category: 'Transport',
  seniority: seniority2
)
challenge_energy2 = Challenge.create!(
  name: 'Reduce heat',
  description: "Reduce your home heating. Heating represent around 40% of the energy consumption.",
  category: 'Energy',
  seniority: seniority2
)
challenge_purchase2 = Challenge.create!(
  name: 'Less is more',
  description: "Try to buy less clothes than you usually do. The process of making new clothes is a carbon and water intensive process.
  Making new fabric involves the extraction of precious natural resources for
  natural fibres production and the use of oil to make polyester fibres.
  Disposing of our clothing pollutes massively, as huge quantities of clothing ends up in landfill.",
  category: 'Purchase',
  seniority: seniority2
)
challenge_waste2 = Challenge.create!(
  name: 'Use compost',
  description: "Have your own compost at home. Composting is nature's way of recycling.
  When we compost instead of throwing food waste away,
  we reduce the amount of solid waste that is destined for a landfill.",
  category: 'Waste',
  seniority: seniority2
)

puts 'creating giant sequoia challenges'

challenge_food3 = Challenge.create!(
  name: 'No meat week',
  description: "Remove meat from your meal during a week! Reducing meat consumption saves water, reduces deforestation
    and lowers greenhouse gas emissions.",
  category: 'Food',
  seniority: seniority3
)
challenge_transport3 = Challenge.create!(
  name: 'Use public transport for less than 5km trip',
  description: "Every vehicle on the road releases an average of one pound of CO2 per mile driven.
  Compared with driving alone, taking public transportation reduces CO2 emissions by 45%,
  decreasing pollutants in the atmosphere and improving air quality",
  category: 'Transport',
  seniority: seniority3
)
challenge_energy3 = Challenge.create!(
  name: 'Switch off standby',
  description: "You can save electricity just by switching off standby of all devices that are currently unused.
  Not to mention that you can save around €65 a year just by remembering to turn your appliances off standby mode!
  Go for it! Let your devices in full spleep mode.",
  category: 'Energy',
  seniority: seniority3
)
challenge_purchase3 = Challenge.create!(
  name: "Les fripes c'est chic",
  description: "By purchasing secondhand clothing instead of fast fashion,
  you are helping to close the loop on the fashion industry's damaging consequences.",
  category: 'Purchase',
  seniority: seniority3
)
challenge_waste3 = Challenge.create!(
  name: 'Avoid single usage',
  description: "Reuse your own bags or container for the content you are buying",
  category: 'Waste',
  seniority: seniority3
)

puts 'creating tips'

Tip.create!(
  name: 'Seasonal menu',
  description: "Use season fruits & vegetables calendar.",
  challenge: challenge_food1
)

Tip.create!(
  name: 'Bike is your friend',
  description: "In big cities, like Paris, it's faster to move with bike instead of car.",
  challenge: challenge_transport1
)

Tip.create!(
  name: 'Use a 5min playlist',
  description: "Set a 5 minutes playlist on Spotify, Deezer or else.",
  challenge: challenge_energy1
)

Tip.create!(
  name: 'Know your product',
  description: "Good On You: is an app that rate brands on issues such as their labour policies, resource use and waste management.",
  challenge: challenge_purchase1
)

Tip.create!(
  name: 'Choose a good bin',
  description: "Have different bin for the different waste with a visual list of what can go in it",
  challenge: challenge_waste1
)

Tip.create!(
  name: 'Shop local',
  description: "Go to the market by yourself to discover seasonal products (and try it sometimes), meet people!",
  challenge: challenge_food2
)

Tip.create!(
  name: 'Money must be funny',
  description: "Use dedicated website or app that help you to organize carpooling and earn money!",
  challenge: challenge_transport2
)

Tip.create!(
  name: "Let the sun come in",
  description: "Open Your Curtains During the Day: When sunlight enters your house through curtains or windows,
  it helps warm the room naturally.",
  challenge: challenge_energy2
)

Tip.create!(
  name: 'Less fun email',
  description: "Unsubscribe and delete: removed yourself from all mailing lists.",
  challenge: challenge_purchase2
)

Tip.create!(
  name: 'Your beautiful compost',
  description: "There are various ways to use your finished compost.
  You can sprinkle compost on top or mix it into your flower and vegetable beds,
  gently rake compost into tree beds, blend it with potting soil to revitalize indoor plants,
  or spread it on top of the soil on your lawn as a soil amendment.",
  challenge: challenge_waste2
)

Tip.create!(
  name: 'Eat differently',
  description: "Use meat substitude like Happyvore, Heura, Beyond Meat",
  challenge: challenge_food3
)

Tip.create!(
  name: 'Legs on fire',
  description: "Use apps that encourage you to walk and reward you like WeWard",
  challenge: challenge_transport3
)

Tip.create!(
  name: "Dark is cool",
  description: "Almost all electrical appliances can be turned off at the plug
  without upsetting their programming.You may want to think about getting a standby saver or smart plug which
   allows you to turn all your appliances off standby in one go.",
  challenge: challenge_energy3
)

Tip.create!(
  name: 'Thrift shop',
  description: "Experiment with different thrift stores: not all secondhand stores are the same.",
  challenge: challenge_purchase3
)

Tip.create!(
  name: 'Use your covert',
  description: "Opt out from single use covert on the delivery apps.",
  challenge: challenge_waste3
)

puts 'creating bookings per user'

will_booking1 = Booking.create!(
  goal: 50,
  status: false,
  weeknumber: 48,
  challenge: challenge_energy2,
  user: user1
)

will_booking2 = Booking.create!(
  goal: 25,
  status: false,
  weeknumber: 48,
  challenge: challenge_purchase2,
  user: user1
)

will_booking3 = Booking.create!(
  goal: 75,
  status: false,
  weeknumber: 48,
  challenge: challenge_transport2,
  user: user1
)

pops_booking1 = Booking.create!(
  goal: 100,
  status: false,
  weeknumber: 48,
  challenge: challenge_energy1,
  user: user2
)

pops_booking2 = Booking.create!(
  goal: 50,
  status: false,
  weeknumber: 48,
  challenge: challenge_transport1,
  user: user2
)

anne_booking1 = Booking.create!(
  goal: 25,
  status: false,
  weeknumber: 48,
  challenge: challenge_food3,
  user: user3
)

anne_booking2 = Booking.create!(
  goal: 50,
  status: false,
  weeknumber: 48,
  challenge: challenge_transport3,
  user: user3
)

anne_booking3 = Booking.create!(
  goal: 25,
  status: false,
  weeknumber: 48,
  challenge: challenge_energy3,
  user: user3
)

cha_booking1 = Booking.create!(
  goal: 75,
  status: false,
  weeknumber: 48,
  challenge: challenge_purchase1,
  user: user4
)

cha_booking2 = Booking.create!(
  goal: 100,
  status: false,
  weeknumber: 48,
  challenge: challenge_transport1,
  user: user4
)

puts 'creating usertips per user'

will_tip1 = Usertip.create!(
  name: "Sorry we are closed",
  description: "Close off rooms that you don't use: By closing off bedrooms and other rooms that aren't being used,
  you can prevent heat from escaping through these unused areas.",
  user: user1,
  booking: will_booking1
)

will_tip2 = Usertip.create!(
  name: 'Make a wish',
  description: "Make a wishlist and only go shopping when you need something",
  user: user1,
  booking: will_booking2
)

will_tip3 = Usertip.create!(
  name: 'Meet people',
  description: "Try fisrt carpooling with your relatives.",
  user: user1,
  booking: will_booking3
)

pop_tip1 = Usertip.create!(
  name: "Calm down your flow",
  description: "Turn off the flow of water in the middle portion of the shower while lathering.",
  user: user2,
  booking: pops_booking1
)

pops_tip2 = Usertip.create!(
  name: "Velib my love",
  description: "Take a bike subscription.",
  user: user2,
  booking: pops_booking2
)

anne_tip1 = Usertip.create!(
  name: "New horizons",
  description: "Find new recipies to cook vegetable and extend your possibilities with new ingredients!",
  user: user3,
  booking: anne_booking1
)

anne_tip2 = Usertip.create!(
  name: "Travel local",
  description: "Use apps that tell you the carbon footprint of a trip.",
  user: user3,
  booking: anne_booking2
)

anne_tip3 = Usertip.create!(
  name: "Magic bus",
  description: "Always prefer public transports.",
  user: user3,
  booking: anne_booking2
)

anne_tip4 = Usertip.create!(
  name: "Plug smarter",
  description: "Plug your devices on electical sockets with switches and set an alarm twice a day so you can turn them off when your alarm rings.",
  user: user3,
  booking: anne_booking3
)

cha_tip1 = Usertip.create!(
  name: "Choose wisely",
  description: "Make a list of slow brands & beware of green washing.",
  user: user4,
  booking: cha_booking1
)

cha_tip2 = Usertip.create!(
  name: "I'm lazy and I know it",
  description: "Try electrical bike.",
  user: user4,
  booking: cha_booking2
)

puts 'puts creating event'

event = Event.create!{
  title: "International Mountain Day"
  description: "Raising awareness  for the importance of mountains and the need for sustainable mountain tourism is what International Mountain Day is all about."
  date: Date.new(2022, 12, 11)
  url: "https://www.un.org/en/observances/mountain-day"
  address: "Worlwide"
  }

event0 = Event.create!{
  title: "Le traitement médiatique de l’urgence climatique"
  description: "Les étudiants du Master Politiques environnementales et Management du Développement durable de l'ICP organisent le mardi 13 décembre 2022 leur conférence annuelle sur «Le traitement médiatique de l’urgence climatique : quels enjeux contemporains ? »"
  date: Date.new(2022, 12, 13)
  url: "https://www.icp.fr/a-propos-de-licp/agenda/le-traitement-mediatique-de-lurgence-climatique-quels-enjeux-contemporains"
  address: "Paris"
  }

event1 = Event.create!{
  title: "Atelier Mission Biodiversité"
  description: "3h pour comprendre les liens entre économie et biodiversité Au programme : apport de connaissances, cas pratique et intelligence collective."
  date: Date.new(2022, 16, 11)
  url: "https://www.engage-biodiversite.com/atelier-mission-biodiversite"
  address: "Lyon"
  }

event2 = Event.create!{
  title: "International Conference on Climate Change and Global Warming"
  description: "International Conference on Climate Change and Global Warming aims to bring together leading academic scientists, researchers and research scholars to exchange and share their experiences and research results on all aspects of Climate Change and Global Warming."
  date: Date.new(2023, 01, 23)
  url: "https://waset.org/climate-change-and-global-warming-conference-in-january-2023-in-london"
  address: "London"
  }

event3 = Event.create!{
  title: "Bio360 Expo 2023"
  description: "It is an international place of meeting for people and organisations who share a dedication to this mission and who have or wish to nail their colours to the biotransition mast."
  date: Date.new(2023, 02, 08)
  url: "https://www.bio360expo.com/lang/en?gclid=Cj0KCQiAkMGcBhCSARIsAIW6d0D_k7Z8USIW5GMwDZ75glwYXDCswcsK9K9E6FjLO3Paoxs-0DYvy3EaArinEALw_wcB"
  address: "Nantes"
  }

event4 = Event.create!{
  title: "Global recycling day"
  description: "Global Recycling Day was created to help recognise, and celebrate, the importance recycling plays in preserving our precious primary resources and securing the future of our planet."
  date: Date.new(2023, 03, 18)
  url: "https://www.globalrecyclingday.com"
  address: "Worldwide"
  }

event5 = Event.create!{
  title: "International Day of Forests"
  description: "This day draws attention to forests as a key resource to combat climate change."
  date: Date.new(2023, 03, 21)
  url: "https://www.un.org/en/observances/forests-and-trees-day"
  address: "Worldwide"
  }

event6 = Event.create!{
  title: "Earth hour"
  description: "Earth Hour is the world's largest environmental movement for the planet that involves 178 countries and territories worldwide."
  date: Date.new(2023, 03, 25)
  url: "https://www.earthhour.org/"
  address: "Worldwide"
  }

event7 = Event.create!{
  title: "Earth Day"
  description: "Earth Day is celebrated to encourage people to take climate action."
  date: Date.new(2023, 04, 22)
  url: "https://climeworks.com/earth-day"
  address: "Worldwide"
  }

event8 = Event.create!{
  title: "International Day for Biological Diversity"
  description: "The International Day for Biological Diversity was created to increase understanding and awareness of biodiversity loss."
  date: Date.new(2023, 05, 22)
  url: "https://www.un.org/en/observances/biological-diversity-day"
  address: "Worldwide"
  }

event9 = Event.create!{
  title: "World Environment Day"
  description: "World Environment Day on 5 June is the United Nation’s flagship day for promoting environmental awareness."
  date: Date.new(2023, 06, 05)
  url: "https://www.worldenvironmentday.global/overview"
  address: "Worldwide"
  }

event10 = Event.create!{
  title: "World Oceans Day"
  description: "World Oceans Day raises global awareness of the importance of our ocean and reminds us that we need to protect our marine ecosystem."
  date: Date.new(2023, 06, 06)
  url: "https://www.un.org/en/observances/oceans-day"
  address: "Worldwide"
  }

event11 = Event.create!{
  title: "World Cleanup Day"
  description: "World Cleanup Day unites millions of volunteers, governments and organisations in 191 countries  to tackle the global waste problem and build up the new and sustainable world."
  date: Date.new(2023, 09, 16)
  url: "https://www.worldcleanupday.org/"
  address: "Worldwide"
  }

event12 = Event.create!{
  title: "International Day for the Preservation of the Ozone Layer"
  description: "This event commemorates the date of the signing of the Montreal Protocol on Substances that Deplete the Ozone Layer in 1987."
  date: Date.new(2023, 09, 16)
  url: "https://www.un.org/en/observances/ozone-day"
  address: "Worldwide"
  }

event13 = Event.create!{
  title: "Zero Emissions Day"
  description: "Zero Emissions Day, was created to highlight the harm that is caused by CO₂ emissions and to try and give the world a break from fossil fuels."
  date: Date.new(2023, 09, 21)
  url: "https://climeworks.com/news/calculate-footprint-for-zero-emissions-day"
  address: "Worldwide"
  }

event14 = Event.create!{
  title: "Climate Change & Sustainability conference"
  description: "The annual gathering of climate leaders from the academic, business, public and nonprofit sectors."
  date: Date.new(2023, 10, 16)
  url: "https://climateweek.thepeopleevents.com/"
  address: "New-York"
  }

event15 = Event.create!{
  title: "International Mountain Day"
  description: "Raising awareness  for the importance of mountains and the need for sustainable mountain tourism is what International Mountain Day is all about."
  date: Date.new(2023, 12, 11)
  url: "https://www.un.org/en/observances/mountain-day"
  address: "Worldwide"
  }

puts 'finished!!'
