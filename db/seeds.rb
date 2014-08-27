# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Timeslot.create([{start_time: 1406052000, duration: 120, availability: 0, customer_count: 0}])
Boat.create(name: 'Emanuel', capacity: 4)
