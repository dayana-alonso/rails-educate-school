# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.create([
  { name: 'Exeter College', address: 'Oxford' },
  { name: 'Trinity College', address: 'Oxford' },
  { name: 'Christ\'s College', address: 'Cambridge' },
  { name: 'Clare College', address: 'Cambridge' },
  { name: 'Yale', address: 'New Haven' }
])
