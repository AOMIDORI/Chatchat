# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

supplier = Supplier.create(
  name: 'Sivex',
  username: 'sivex',
  email: 'sivex@sivex.fi',
  address: 'Hämeentie 157, 6th floor, H10, FIN-00560 Helsinki',
  phone: '+358 40 774 8085',
  description: 'We work every day to over 100 unique cleaning . We operate in the Helsinki Metropolitan Area (Helsinki, Espoo, Vantaa, Kauniainen) and its surrounding areas. We serve a broad businesses and private households. Our 450 standard customers can not be wrong.'
)

services = Service.create([
  {
    supplier: supplier,
    name: 'Household cleaning',
    service_type: :cleaning,
    price: 40,
    description: 'Vacuuming\ndusts wiping\nfloor wipe\nbeating can carpets\nIroning\nBed linen exchange\nDebris removal\nFloor waxing\nTerrace and outdoor porch cleaning\nCleaning Patio Furniture\nCleaning the room and sanitary facilities\nWashing windows\nHousehold appliances wiping and cleaning'
  },
  {
    supplier: supplier,
    name: 'Moving cleaning',
    service_type: :cleaning,
    price: 60,
    description: 'Window wiping the boards\nIkkunasälekaihtimien brushing\ncleaning, kitchen appliances, including cooker hood\nKitchen cabinets thorough interior and exterior cleaning\ncleaning the kitchen tiles\nwashing and disinfection of toilet facilities\nFloor drain cleaning\nthorough cleaning tile surfaces and seams\nwashing Sanitary door glass\nwashing the sauna walls and benches\nWipe the floor surface clammy\ncleaning of walls and doors\ncleaning of the apartment stains\nVacuuming carpets and rugs, and export out of the ventilation'
  }
])

user = User.new(
  name: 'David Walker',
  email: 'dave@email.com',
)
user.password = '1234qwer'
user.password_confirmation = '1234qwer'
user.save

Review.create([
  {
    service: services.first,
    user: user,
    date: Time.now,
    rating: 5,
    comment: 'Exceptional. He worked efficiently from upstairs to downstairs to
ensure all vents were super clean and that the furnace worked
properly with no issues.'
  },
  {
    service: services.second,
    user: user,
    date: Time.now,
    rating: 5,
    comment: 'David was very professional and clearly an expert in his field. He
was very thorough and explained the process and what additional
services were needed. Provided them at very reasonable cost.'
  }
])
