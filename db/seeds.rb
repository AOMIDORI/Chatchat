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
  image_url: 'http://sivex-sivusto.etunti.fi/wp-content/uploads/2016/11/sivex_logo_vad-1.png',
  description: 'We work every day to over 100 unique cleaning. We operate in the Helsinki Metropolitan Area (Helsinki, Espoo, Vantaa, Kauniainen) and its surrounding areas. We serve a broad businesses and private households. Our 450 standard customers can not be wrong.'
)

services = Service.create([
  {
    supplier: supplier,
    name: 'Household cleaning',
    image_url: 'http://sivex-sivusto.etunti.fi/wp-content/uploads/2015/09/kotisiivous-e1474623506543.png',
    service_type: :cleaning,
    price: 40,
    description: "- Vacuuming\r\n- dusts wiping\r\n- floor wipe\r\n- beating can carpets\r\n- Ironing\r\n- Bed linen exchange\r\n- Debris removal\r\n- Floor waxing\r\n- Terrace and outdoor porch cleaning\r\n- Cleaning Patio Furniture\r\n- Cleaning the room and sanitary facilities\r\n- Washing windows\r\n- Household appliances wiping and cleaning"
  },
  {
    supplier: supplier,
    name: 'Moving cleaning',
    image_url: 'http://sivex-sivusto.etunti.fi/wp-content/uploads/2015/11/muuttosiivouskoira5-e1474280499517.png',
    service_type: :cleaning,
    price: 60,
    description: "- Window wiping the boards\r\n- Ikkunasälekaihtimien brushing\r\n- cleaning, kitchen appliances, including cooker hood\r\n- Kitchen cabinets thorough interior and exterior cleaning\r\n- cleaning the kitchen tiles\r\n- washing and disinfection of toilet facilities\r\n- Floor drain cleaning\r\n- thorough cleaning tile surfaces and seams\r\n- washing Sanitary door glass\r\n- washing the sauna walls and benches\r\n- Wipe the floor surface clammy\r\n- cleaning of walls and doors\r\n- cleaning of the apartment stains\r\n- Vacuuming carpets and rugs, and export out of the ventilation"
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
    comment: 'Exceptional. He worked efficiently from upstairs to downstairs to ensure all vents were super clean and that the furnace worked properly with no issues.'
  },
  {
    service: services.second,
    user: user,
    date: Time.now,
    rating: 5,
    comment: 'David was very professional and clearly an expert in his field. He was very thorough and explained the process and what additional services were needed. Provided them at very reasonable cost.'
  }
])
