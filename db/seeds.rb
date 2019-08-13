# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Faker::Config.locale = 'en'

20.times do
    # email = "#{Faker::Name.first_name}@yopmail.com"
    # fname = Faker::Name.first_name
    # lname = Faker::Name.last_name
    # User.create(email: email, first_name: fname, last_name: lname)

    start = Faker::Date.between_except(from: 2.days.from_now, to: 1.year.from_now, excepted: Date.today)
    duration = 45
    title ="#{Faker::Company.name} conference"
    desc = "Topic of the conference : #{Faker::Company.catch_phrase}"
    price = Faker::Number.within(range: 25..999)
    location = Faker::Address.city

    Event.create(start_date: start, duration: duration, title: title, description: desc, price: price, location: location )
end