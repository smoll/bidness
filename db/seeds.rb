# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'smoll@example.com', password: 'takingcareofit', password_confirmation: 'takingcareofit')

Contact.create!(
  first_name: 'Jim',
  last_name: 'Bob',
  email: 'jim@example.com',
  title: 'CEO of Acme, Inc.'
)
Contact.create!(
  first_name: 'Satoshi',
  last_name: 'Nakamoto',
  email: 'satoshi@example.com',
  title: 'CEO of Faker LLC'
)
