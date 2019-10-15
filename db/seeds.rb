# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EVENTS_NAMES = ["Red Hot Chili Pepers @ PGE Narodowy", "Foals @ Spodek", "Floating Points @ Smolna", "Tame Impala @ Progresja"]

EVENTS_NAMES.each do |event|
  Event.create(name: event,
               date: Faker::Time.between_dates(from: Date.today + 1,
               to: Date.today + 365,
               period: :evening),
               capacity: rand(10..50)
               )
             end

Event.all.each { |event| event.capacity.times { event.tickets.create(price: 50) } }
