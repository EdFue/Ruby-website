# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Library.destroy_all
County.destroy_all

boulder = County.create(
  name: 'Boulder',
  population: 108250,
  coordinates: '40°00′54″N 105°16′14″W'
)
denver = County.create(
  name: 'Denver',
  population: 715000,
  coordinates: '39.7392°N 104.9850°W'
)

Library.create!(
  county: denver,
  name: 'Central Library',
  address: '10 W. Fourteenth Ave. Pkwy. 80204',
  telephone: '720-865-1111'
)
Library.create!(
  county: denver,
  name: 'Athmar Park Branch Library',
  address: '1055 S. Tejon Street 80223',
  telephone: '720-865-0230'
)
Library.create!(
  county: denver,
  name: 'Ross-Barnum Branch Library',
  address: '3570 W. First Avenue 80219',
  telephone: '720-865-0145'
)
Library.create!(
  county: denver,
  name: 'Bear Valley Branch Library',
  address: '5171 W. Dartmouth Ave. 80236',
  telephone: '720-865-0975'
)
Library.create!(
  county: denver,
  name: 'Blair-Caldwell African American Research Library',
  address: '2401 Welton St. 80205',
  telephone: '720-865-2401'
)
Library.create!(
  county: denver,
  name: 'Bob Ragland Branch Library',
  address: '1900 35th Street, Suite A, 80216',
  telephone: '720-865-2400'
)
Library.create!(
  county: denver,
  name: 'Ross-Broadway Branch Library',
  address: '33 E. Bayaud Avenue 80209',
  telephone: '720-865-0135'
)
Library.create!(
  county: denver,
  name: 'Ross-Cherry Creek Branch Library',
  address: '305 Milwaukee Street 80206',
  telephone: '720-865-0120'
)
Library.create!(
  county: denver,
  name: 'Decker Branch Library',
  address: '1501 S. Logan St. 80210',
  telephone: '720-865-0220'
)
Library.create!(
  county: denver,
  name: 'Eugene Field Branch Library',
  address: '810 S. University Blvd. 80209',
  telephone: '720-865-0240'
)
Library.create!(
  county: denver,
  name: 'Ford-Warren Branch Library',
  address: '2825 High St. 80205',
  telephone: '720-865-0920'
)
Library.create!(
  county: denver,
  name: 'Green Valley Ranch Branch Library',
  address: '4856 N. Andes Ct. 80249',
  telephone: '720-865-0310'
)
Library.create!(
  county: denver,
  name: 'Hadley Branch Library',
  address: '1890 S. Grove St. 80219',
  telephone: '720-865-0170'
)
Library.create!(
  county: denver,
  name: 'Hampden Branch Library',
  address: '9755 E. Girard Ave. 80231',
  telephone: '720-865-0185'
)
Library.create!(
  county: denver,
  name: 'John "Thunderbird Man" Emhoolah, Jr. Branch Library',
  address: '675 Santa Fe Dr. 80204',
  telephone: '720-865-0160'
)
Library.create!(
  county: denver,
  name: 'Montbello Branch Library',
  address: '12955 Albrook Dr. 80239',
  telephone: '720-865-0200'
)
Library.create!(
  county: denver,
  name: 'Park Hill Branch Library',
  address: '4705 Montview Blvd. 80207',
  telephone: '720-865-0250'
)
Library.create!(
  county: denver,
  name: 'Pauline Robinson Branch Library',
  address: '5575 E. 33rd Ave. 80207',
  telephone: '720-865-0290'
)
Library.create!(
  county: denver,
  name: 'Rodolfo "Corky" Gonzales Branch Library',
  address: '1498 N. Irving Street 80204',
  telephone: '720-865-2370'
)
Library.create!(
  county: denver,
  name: 'Sam Gary Branch Library',
  address: '2961 Roslyn St. 80238',
  telephone: '720-865-0325'
)
Library.create!(
  county: denver,
  name: 'Schlessman Family Branch Library',
  address: '100 Poplar St. 80220',
  telephone: '720-865-0000'
)
Library.create!(
  county: denver,
  name: 'Smiley Branch Library',
  address: '4501 W. 46th Avenue 80212',
  telephone: '720-865-0260'
)
Library.create!(
  county: denver,
  name: 'Ross-University Hills Branch Library',
  address: '4310 E. Amherst Avenue 80222',
  telephone: '720-865-0955'
)
Library.create!(
  county: denver,
  name: 'Valdez-Perry Branch Library',
  address: '4690 Vine Street 80216',
  telephone: '720-865-0300'
)
Library.create!(
  county: denver,
  name: 'Virginia Village Branch Library',
  address: '1500 S. Dahlia Street 80222',
  telephone: '720-865-0940'
)
Library.create!(
  county: denver,
  name: 'Westwood Branch Library',
  address: '1000 S. Lowell Blvd. 80219',
  telephone: '720-865-0215'
)
Library.create!(
  county: denver,
  name: 'Woodbury Branch Library',
  address: '3265 Federal Blvd. 80211',
  telephone: '720-865-0930'
)

Person.destroy_all
20.times {
    Person.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        address: Faker::Address.full_address,
        phone: Faker::PhoneNumber.cell_phone,
        library_card: rand(100000000..999999999)
    )
}