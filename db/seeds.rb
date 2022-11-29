
puts "cleaning users"
User.destroy_all
puts 'cleaning seniorities'
Seniority.destroy_all

puts 'creating seniorities'

seniority1 = Seniority.create(
  name: "Little seed"
)
seniority2 = Seniority.create(
  name: "Beautiful flower"
)
seniority3 = Seniority.create(
  name: "Giant sequoia"
)

puts 'creating user'

user1 = User.create(
  username: "william-eco",
  email: "william@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/115219328?v=4",
  seniority_id: seniority2
)

user2 = User.create(
  username: "pauline-eco",
  email: "pauline@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/106176972?v=4",
  seniority_id: seniority1
)

user3 = User.create(
  username: "anne-eco",
  email: "anne@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/109987907?v=4",
  seniority_id: seniority3
)

user4 = User.create(
  username: "charlotte-eco",
  email: "charlotte@eco.com",
  password: "1234567",
  avatar: "https://avatars.githubusercontent.com/u/110730954?v=4",
  seniority_id: seniority1
)

puts 'creating little seed challenges'

challenge_food1 = Challenge.create(
  name: 'Season Vegetables race',
  description: "Only purchase local vegetables that are in season.
  It simply means you choose food that's grown locally.
  Locally grown, seasonal food has the biggest benefit for the planet,
  as it takes less resources to transport and store your food.
  Did you know transporting food by air generates 177 times more greenhouse gases than shipping it?",
  category: 'Food',
  seniority_id: seniority1
)
challenge_transport1 = Challenge.create(
  name: 'I want to ride my bicycle',
  description: "It's always the best way to stay fit and keep our carbon footprint at the lowest,
  it's 21g of CO2/km,that's 4,5 times less than the car",
  category: 'Transport',
  seniority_id: seniority1
)
challenge_energy1 = Challenge.create(
  name: 'Shower fast and dry',
  description: "Low-down your shower to up to 4 minutes max will allow you saving liters of water.
  And that's not it: you could save €95 a year for your energy bills. ",
  category: 'Energy',
  seniority_id: seniority1
)
challenge_purchase1 = Challenge.create(
  name: 'We dress fair',
  description: "Fast fashion is destined for a short life – it’s created for temporary wear.
   The effect of fast fashion is huge not only for the psyche of the individual
  but for the environment and its workers as well.
  Fast fashion is known for its bad working conditions for its employees.
  Fast fashion companies are frequently accused of exploiting their workers
   and paying very cheap wages in order to earn a profit. ",
  category: 'Purchase',
  seniority_id: seniority1
)
challenge_waste1 = Challenge.create(
  name: 'Sort wastes',
  description: "Use the correct bin for each waste",
  category: 'Waste',
  seniority_id: seniority1
)

puts 'creating beautiful flower challenges'

challenge_food2 = Challenge.create(
  name: 'Deliveries break',
  description: "Reduce food deliveries as much as possible to reduce transportation(CO2) and packaging",
  category: 'Food',
  seniority_id: seniority2
)
challenge_transport2 = Challenge.create(
  name: 'Carpooling',
  description: " Carpooling helps to alleviate road traffic and reduce travel costs.
  In 2018, more than 270,000 tons of CO2 were avoided in France thanks to long-distance carpooling.
  Unfortunately, this practice still represents only 3% of daily trips. For a distance of 15 km,
  carpooling amounts to 1095 gCO2e, it's 67% less than a solo trip by car.",
  category: 'Transport',
  seniority_id: seniority2
)
challenge_energy2 = Challenge.create(
  name: 'Reduce heat',
  description: "Reduce your home heating.
  Heating represent around 40% of the energy consumption.",
  category: 'Energy',
  seniority_id: seniority2
)
challenge_purchase2 = Challenge.create(
  name: 'Less is the new chic',
  description: "The process of making new clothes is a carbon and water intensive process.
  Making new fabric involves the extraction of precious natural resources for
  natural fibres production and the use of oil to make polyester fibres.
  Disposing of our clothing pollutes massively, as huge quantities of clothing ends up in landfill.",
  category: 'Purchase',
  seniority_id: seniority2
)
challenge_waste2 = Challenge.create(
  name: 'Use compost',
  description: "Composting is nature's way of recycling.
  When we compost instead of throwing food waste away,
  we reduce the amount of solid waste that is destined for a landfill.",
  category: 'Waste',
  seniority_id: seniority2
)

puts 'creating giant sequoia challenges'

challenge_food3 = Challenge.create(
  name: 'No meat week',
  description: "Delete meat from your food for the week",
  category: 'Food',
  seniority_id: seniority3
)
challenge_transport3 = Challenge.create(
  name: 'Use public transport for less than 5km trip',
  description: "Every vehicle on the road releases an average of one pound of CO2 per mile driven.
  Compared with driving alone, taking public transportation reduces CO2 emissions by 45%,
  decreasing pollutants in the atmosphere and improving air quality",
  category: 'Transport',
  seniority_id: seniority3
)
challenge_energy3 = Challenge.create(
  name: 'Switch off standby',
  description: "You can save electricity just by switching off standby of all devices that are currently unused.
  Not to mention that you can save around €65 a year just by remembering to turn your appliances off standby mode!
  Go for it! Let your devices in full spleep mode.",
  category: 'Energy',
  seniority_id: seniority3
)
challenge_purchase3 = Challenge.create(
  name: "Les fripes c'est chic",
  description: "By purchasing secondhand clothing instead of fast fashion,
  you are helping to close the loop on the fashion industry's damaging consequences.",
  category: 'Purchase',
  seniority_id: seniority3
)
challenge_waste3 = Challenge.create(
  name: 'Avoid single usage',
  description: "Reuse your own bags or container for the content you are buying",
  category: 'Waste',
  seniority_id: seniority3
)

puts 'creating tips'

Tip.create(
  name: 'Seasonal menu',
  description: "Use season fruits & vegetables schedule : https://www.greenpeace.fr/guetteur/calendrier/",
  challenge_id: challenge_food1
)
Tip.create(
  name: 'Bike is your friend',
  description: "
  - In big cities, like Paris, it's faster to move with bike instead of car
  - take a bike subscription
  - try electrical bike",
  challenge_id: challenge_transport1
)
Tip.create(
  name: 'Use a 5min playlist',
  description: "
  - Set a 4 minutes playlist on Spotify of Deezer.
  - Turn off the flow of water in the middle portion of the shower while lathering",
  challenge_id: challenge_energy1
)
Tip.create(
  name: 'Know your product',
  description: "
  - Good On You: is an app that rate brands on issues such as their labour policies, resource use and waste management
  - Make a list of slow brand
  - Prefer sustainable materials
  - Beware of green whashing",
  challenge_id: challenge_purchase1
)
Tip.create(
  name: 'Choose a good bin',
  description: "- Have different bin for the different waste with a visual list of what can go in it",
  challenge_id: challenge_waste1
)

Tip.create(
  name: 'Shop local',
  description: "
  - Go to the market by yourself to discover seasonal product (and try it sometimes), meet people !",
  challenge_id: challenge_food2
)
Tip.create(
  name: 'Meet people',
  description: "
  - Use website for this and earn money
  - First try this with your relatives",
  challenge_id: challenge_transport2
)
Tip.create(
  name: "Let the sun come in",
  description: "- Close Off Rooms that You Don't Use : By closing off bedrooms and other rooms that aren't being used,
  you can prevent heat from escaping through these unused areas.
  - Open Your Curtains During the Day : When sunlight enters your house through curtains or windows,
  it helps warm the room naturally. ",
  challenge_id: challenge_energy2
)
Tip.create(
  name: 'Less fun email',
  description: "- Unsubscribe and delete: removed yourself from all mailing lists
  - Make a wishlist.
  - Only go shopping when you need something",
  challenge_id: challenge_purchase2
)
Tip.create(
  name: 'Your beautiful compost',
  description: "There are various ways to use your finished compost.
  You can sprinkle compost on top or mix it into your flower and vegetable beds,
  gently rake compost into tree beds, blend it with potting soil to revitalize indoor plants,
  or spread it on top of the soil on your lawn as a soil amendment.",
  challenge_id: challenge_waste2
)

Tip.create(
  name: 'Eat differently',
  description: "
  - Use meat substitude like Happyvore, Heura, Beyond Meat
  - Find new recipies to cook vegetable
  - Extend your possibilities with new ingredients ! ",
  challenge_id: challenge_food3
)
Tip.create(
  name: 'Legs on fire',
  description: "- Use app that encourage you to walk like weward
  - Use app that tells you the carbon footprint of a trip
  - Travel local
  - Use public transport",
  challenge_id: challenge_transport3
)
Tip.create(
  name: "Dark is cool",
  description: "- Almost all electrical appliances can be turned off at the plug
  without upsetting their programming.
  You may want to think about getting a standby saver or smart plug which
   allows you to turn all your appliances off standby in one go.
  - Plug your devices on electical sockets with switches and set an alarm twice a day
  so you can turn them off when your alarm rings.",
  challenge_id: challenge_energy3
)
Tip.create(
  name: 'Thrift shop',
  description: "- Experiment with different thrift stores: not all secondhand stores are the same.",
  challenge_id: challenge_purchase3
)
Tip.create(
  name: 'Use your covert',
  description: "Opt out from single use covert on the delivery apps ",
  challenge_id: challenge_waste3
)

puts 'finished!!'
