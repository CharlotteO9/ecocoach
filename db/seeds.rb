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
  description: "Hello little seed, I am happy to see you. You want to change your habits? You can be proud of you. EcoCoach will help you!",
  ranking: 0
)
seniority2 = Seniority.create!(
  name: "Beautiful flower",
  description: "Congratulations, you became a beautiful flower! You are on your way to becoming a real eco-citizen, don't give up!!",
  ranking: 1
)
seniority3 = Seniority.create!(
  name: "Giant sequoia",
  description: "Here we are, it's the last step, you come a long way! EcoCoach is so proud of you! Keep on going!",
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
  seniority: seniority2
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
  name: 'Season vegetables race',
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
challenge_purchase1 = Challenge.create!(
  name: 'Taking it slow (fashion)',
  description: "Only buy from slow fashion brand. Fast fashion is destined for a short life, it is created for temporary wear.
  The effect of fast fashion is huge not only for the psyche of the individual
  but for the environment and its workers as well.
  Fast fashion is known for its bad working conditions for its employees.
  Fast fashion companies are frequently accused of exploiting their workers
  and paying very cheap wages in order to earn a profit. ",
  category: 'Purchase',
  seniority: seniority1
)
challenge_purchase4 = Challenge.create!(
  name: 'Say stop pub',
  description: "While the quantities of these unsolicited printed materials have been declining since 2010.
  But they nevertheless continue to be high: nearly 800,000 tons in France in 2015.
  This corresponds to an average of 12kg per inhabitant over a year or 30kg per household.",
  category: 'Purchase',
  seniority: seniority1
)
challenge_waste1 = Challenge.create!(
  name: "Wastes are SORT of a big deal",
  description: "Sort your waste by using the correct bin for each waste.",
  category: 'Waste',
  seniority: seniority1
)
challenge_energy1 = Challenge.create!(
  name: 'Shower fast & dry',
  description: "Low-down your shower to up to 5 minutes max will allow you to save liters of water.
  And that's not it: you could save around ???95 a year for your energy bills.",
  category: 'Energy',
  seniority: seniority1
)
challenge_waste4 = Challenge.create!(
  name: 'The good bag',
  description: "Every year in France, 5 million tons of household packaging are put on the market.
  It is up to you, the consumer, to be careful. ",
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
challenge_food4 = Challenge.create!(
  name: 'Beautiful fish',
  description: "Become an actor of the marine environment by favouring products from sustainable fishing.
  Illegal fishing is far too present.",
  category: 'Food',
  seniority: seniority2
)
challenge_transport2 = Challenge.create!(
  name: 'Carpooling',
  description: "Never travel alone in a car: share rides. Carpooling helps to alleviate road traffic and reduce travel costs.
  In 2018, more than 270,000 tons of CO2 were avoided in France thanks to long-distance carpooling.
  Unfortunately, this practice still represents only 3% of daily trips. For a distance of 15km,
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
  Not to mention that you can save around ???65 a year just by remembering to turn your appliances off standby mode!
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
  name: 'Use a reusable bag',
  description: "You can bring back and reuse your refillable packaging every time you go to the store.",
  challenge: challenge_waste4
)
Tip.create!(
  name: 'Choose the good fishmonger',
  description: "Try to find out where the fish you buy comes from.",
  challenge: challenge_food4
)
Tip.create!(
  name: 'I say no',
  description: "The best way, stick a stop pub on your mailbox.",
  challenge: challenge_purchase4
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
  description: "Open your curtains during the day: when sunlight enters your house through curtains or windows,
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
  description: "Close off rooms that you don't use: by closing off bedrooms and other rooms that aren't being used,
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
  description: "Try first carpooling with your relatives.",
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
  description: "Plug your devices on electrical sockets with switches and set an alarm twice a day so you can turn them off when your alarm rings.",
  user: user3,
  booking: anne_booking3
)

cha_tip1 = Usertip.create!(
  name: "Choose wisely",
  description: "Make a list of slow brands & beware of green washing.",
  user: user4,
  booking: cha_booking1
)

puts 'puts creating event'

event_demo1 = Event.create!(
  title: "Le traitement m??diatique de l'urgence climatique",
  description: "Les ??tudiants du Master Politiques environnementales et Management du D??veloppement durable de l'ICP organisent le mardi 13 d??cembre 2022 leur conf??rence annuelle sur ??Le traitement m??diatique de l'urgence climatique : quels enjeux contemporains ?",
  date: Date.new(2022, 12, 9),
  url: "https://www.icp.fr/a-propos-de-licp/agenda/le-traitement-mediatique-de-lurgence-climatique-quels-enjeux-contemporains",
  address: "Paris"
)

event_demo2 = Event.create!(
  title: "Atelier Mission Biodiversit??",
  description: "3h pour comprendre les liens entre ??conomie et biodiversit??. Au programme : apport de connaissances, cas pratique et intelligence collective.",
  date: Date.new(2022, 12, 9),
  url: "https://www.engage-biodiversite.com/atelier-mission-biodiversite",
  address: "Paris"
)

event_demo3 = Event.create!(
  title: "Time to Change 2023",
  description: "Echanges entre les acteurs cl??s du financement et les porteurs de projets sur les grands enjeux de la transition ??nerg??tique.",
  date: Date.new(2022, 12, 9),
  url: "https://www.greenunivers.com/time-to-change-2023/",
  address: "Grenoble"
)

event_demo4 = Event.create!(
  title: "Journ??e scientifique : comprendre et s'approprier les messages-cl??s du 6e rapport du GIEC",
  description: "Un d??cryptage des messages-cl??s du rapport et ?? la fa??on dont les parties prenantes s'en emparent d??j??.",
  date: Date.new(2022, 12, 9),
  url: "https://meteoetclimat.fr/nos-activites/journees-scientifiques/journee-scientifique-paris-2022/",
  address: "Paris"
)

event_demo5 = Event.create!(
  title: "BePOSITIVE",
  description: "Rendez-vous sur BePOSITIVE, l'??v??nement de ceux qui construisent le monde d??carbon?? de demain !",
  date: Date.new(2022, 12, 9),
  url: "https://www.bepositive-events.com/fr",
  address: "Bordeaux"
)

event_demo6 = Event.create!(
  title: "World Cleanup Day",
  description: "World Cleanup Day unites millions of volunteers, governments and organisations in 191 countries to tackle the global waste problem and build up the new and sustainable world.",
  date: Date.new(2022, 12, 10),
  url: "https://www.worldcleanupday.org/",
  address: "Worldwide"
)

event_demo7 = Event.create!(
  title: "International conference on climate change and global Warming",
  description: "International conference on climate change and global warming aims to bring together leading academic scientists, researchers and research scholars to exchange and share their experiences and research results on all aspects of climate change and global warming.",
  date: Date.new(2022, 12, 10),
  url: "https://waset.org/climate-change-and-global-warming-conference-in-january-2023-in-london",
  address: "Paris"
)

event_demo8 = Event.create!(
  title: "Bio360 Expo 2023",
  description: "It is an international place of meeting for people and organisations who share a dedication to this mission and who have or wish to nail their colours to the biotransition mast.",
  date: Date.new(2022, 12, 10),
  url: "https://www.bio360expo.com/lang/en?gclid=Cj0KCQiAkMGcBhCSARIsAIW6d0D_k7Z8USIW5GMwDZ75glwYXDCswcsK9K9E6FjLO3Paoxs-0DYvy3EaArinEALw_wcB",
  address: "Nantes"
)

event_demo9 = Event.create!(
  title: "International conference on information and communications technology for sustainability",
  description: "Sustainability is of primary interest in the context of an in-person event, with a specific sustainability chair in the organizing committee.",
  date: Date.new(2022, 12, 10),
  url: "https://conf.researchr.org/home/ict4s-2023",
  address: "Paris"
)

event_demo10  = Event.create!(
  title: "International Mountain Day",
  description: "Raising awareness  for the importance of mountains and the need for sustainable mountain tourism is what International Mountain Day is all about.",
  date: Date.new(2022, 12, 11),
  url: "https://www.un.org/en/observances/mountain-day",
  address: "Worlwide"
)

event_demo11 = Event.create!(
  title: "Balade thermographique : par ou s'echappe la chaleur de nos maisons ?",
  description: "Balade dans les rues de la ville afin d'observer les b??timents ?? l'aide d'une cam??ra thermique. L'objectif ? Visualiser les d??fauts d'isolation et r??fl??chir ?? des solutions concr??tes pour y pallier.",
  date: Date.new(2022, 12, 11),
  url: "https://www.alec-montpellier.org/",
  address: "Marseille"
)

event_demo12 = Event.create!(
  title: "For??ts, Biens Communs 4 - Faire rena??tre une for??t primaire en Europe de l'Ouest",
  description: "Cette rencontre sera l'occasion de faire un ??tat des lieux de ces for??ts primaires sur la plan??te et d'explorer leurs sp??cificit??s et caract??ristiques.",
  date: Date.new(2022, 12, 11),
  url: "https://www.universitebiencommun.org/",
  address: "Nantes"
)

event_demo13 = Event.create!(
  title: "Soir??e politique sur l'avenir de l'industrie entre crise ??nerg??tique et d??carbonation",
  description: "Entre crise ??nerg??tique et d??carbonation, quel avenir pour l'industrie en France et en Allemagne ?",
  date: Date.new(2022, 12, 12),
  url: "https://energie-fr-de.eu/fr/manifestations/lecteur/soiree-politique-sur-lavenir-de-lindustrie-entre-crise-energetique-et-decarbonation.html",
  address: "Toulouse"
)

event_demo14 = Event.create!(
  title: "Climate Change & Sustainability conference",
  description: "The annual gathering of climate leaders from the academic, business, public and non profit sectors.",
  date: Date.new(2022, 12, 13),
  url: "https://climateweek.thepeopleevents.com/",
  address: "New-York"
)





event1 = Event.create!(
  title: "Global recycling day",
  description: "Global recycling day was created to help recognise, and celebrate, the importance recycling plays in preserving our precious primary resources and securing the future of our planet.",
  date: Date.new(2023, 3, 18),
  url: "https://www.globalrecyclingday.com",
  address: "Worldwide"
)

event2 = Event.create!(
  title: "International Day of Forests",
  description: "This day draws attention to forests as a key resource to combat climate change.",
  date: Date.new(2023, 3, 21),
  url: "https://www.un.org/en/observances/forests-and-trees-day",
  address: "Worldwide"
)

event3 = Event.create!(
  title: "Earth hour",
  description: "Earth Hour is the world's largest environmental movement for the planet that involves 178 countries and territories worldwide.",
  date: Date.new(2023, 3, 25),
  url: "https://www.earthhour.org/",
  address: "Worldwide"
)

event4 = Event.create!(
  title: "Earth Day",
  description: "Earth Day is celebrated to encourage people to take climate action.",
  date: Date.new(2023, 4, 22),
  url: "https://climeworks.com/earth-day",
  address: "Worldwide"
)

event5 = Event.create!(
  title: "International Day for Biological Diversity",
  description: "The International Day for Biological Diversity was created to increase understanding and awareness of biodiversity loss.",
  date: Date.new(2023, 5, 22),
  url: "https://www.un.org/en/observances/biological-diversity-day",
  address: "Worldwide"
)

event6 = Event.create!(
  title: "World Environment Day",
  description: "World Environment Day on 5 June is the United Nation's flagship day for promoting environmental awareness.",
  date: Date.new(2023, 6, 5),
  url: "https://www.worldenvironmentday.global/overview",
  address: "Worldwide"
)

event7 = Event.create!(
  title: "World Oceans Day",
  description: "World Oceans Day raises global awareness of the importance of our ocean and reminds us that we need to protect our marine ecosystem.",
  date: Date.new(2023, 6, 6),
  url: "https://www.un.org/en/observances/oceans-day",
  address: "Worldwide"
)

event8 = Event.create!(
  title: "International Day for the Preservation of the Ozone Layer",
  description: "This event commemorates the date of the signing of the Montreal Protocol on Substances that Deplete the Ozone Layer in 1987.",
  date: Date.new(2023, 9, 16),
  url: "https://www.un.org/en/observances/ozone-day",
  address: "Worldwide"
)

event9 = Event.create!(
  title: "Zero Emissions Day",
  description: "Zero Emissions Day, was created to highlight the harm that is caused by CO??? emissions and to try and give the world a break from fossil fuels.",
  date: Date.new(2023, 9, 21),
  url: "https://climeworks.com/news/calculate-footprint-for-zero-emissions-day",
  address: "Worldwide"
)

event10 = Event.create!(
  title: "International Mountain Day",
  description: "Raising awareness for the importance of mountains and the need for sustainable mountain tourism is what International Mountain Day is all about.",
  date: Date.new(2023, 12, 11),
  url: "https://www.un.org/en/observances/mountain-day",
  address: "Worldwide"
)

puts 'finished!!'
