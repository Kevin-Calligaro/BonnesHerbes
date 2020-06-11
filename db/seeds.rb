# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '>>>>>>>>>>>>>>On commence à jardinner<<<<<<<<<<<<<<<<<<<<<'

print '>>>>>>>>>>>>>>cleaning the db<<<<<<<<<<<<<<<<<<<<<'

Garden.destroy_all
User.destroy_all
Relationship.destroy_all
Vegetable.destroy_all
GardenVegetable.destroy_all
Seed.destroy_all
Plant.destroy_all
Harvest.destroy_all

puts 'La db est propre'

puts '>>>>>>>>>>>>>>On créé des végétaux <<<<<<<<<<<<<<<<<<<<<'

tomato = Vegetable.create!(
    specie: "Tomato",
    variety: "Oaxaca",
    seed_start: Date.parse("01-02-2020"),
    seed_end: Date.parse("01-05-2020"),
    seed_period: nil,
    seed_description: "Sow seed in late March to early April for outdoor crops, and in mid-February for growing in an unheated glasshouse. Seed can be expensive, but usually only a few plants are needed, and germination is usually good.
      - Fill 9cm (3½in) pot with seed or multipurpose compost
      - Level and firm the compost, then water
      - Sow seeds on the compost surface, spacing them evenly, about a finger-width apart, to prevent damping off disease
      - Cover the seed with a layer of vermiculite
      - Keep at approximately 21°C (70°F), ideally in a heated propagator, until seedlings emerge
      - Transfer seedlings to a heated greenhouse or, although less good, a sunny windowsill
      Seedlings emerge after about five days. Place them in the best-possible light (such as a greenhouse) and at a temperature of around 18°C (65°F) to prevent seedlings becoming long, thin and ‘leggy’. Leggy plants produce their first flowers high up on the plant leading to a bare, unproductive lower stem.
      Growing on:
      Ideally, grow on in a glasshouse (or failing this, a well-lit windowsill), spacing plants so that their leaves never touch to avoid legginess. About a month after pricking out, the plants will be ready for planting into their final positions – this is indicated by the first flowers showing their yellow colour. The stress of being grown in the confines of a pot promotes flowers earlier than in less stressful positions, such as growing in the ground.",
    plant_start: Date.parse("01-05-2020"),
    plant_end: Date.parse("01-07-2020"),
    plant_period: 42,
    plant_description:"Plant outside in early summer. In unheated greenhouses, planting can take place in mid-spring. Set plants 40cm (16in) apart and water in well.
      When planting into open ground, create a shallow circular reservoir around the plant to help retain water.",
    harvest_start: Date.parse("01-07-2020"),
    harvest_end: Date.parse("01-10-2020"),
    harvest_description: "Pick fruits as required, with the calyx (stalk) still attached. When cropping slows in early autumn, green fruits can be gathered and kept in a warm, dark place to ripen.",
    harvest_period: nil,
    raw_space: 30,
    line_space: 30,
    description: 'Growing your own tomatoes is simple and just a couple of plants will reward you with plenty of delicious tomatoes in the summer. There are all sizes of tomatoes to try, from the tiniest cherry types, favourites with children, through to full-flavoured giant beefsteak tomatoes.',
    # photo_vegetable: "tomatoes_photo.png",
    # icon_vegetable: "tomato.png"
    )

puts 'Merci Dieu!'

print '>>>>>>>>>>>>>>>>>> On créé un faux jardinier <<<<<<<<<<<<<<'

user1 = User.create!(
  email: 'robert.dupont@gmail.com',
  first_name: 'Robert',
  last_name: 'Dupont',
  password: 'secret'
)

puts 'Bienvenue Robert!'

print '>>>>>>>>>>>>>>>>>> On créé un jardin <<<<<<<<<<<<<<<<<'

garden1 = Garden.create!(
  title: 'Le jardin d\'eden',
  user: user1
)

puts 'La terre est prête'


