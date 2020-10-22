# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.create!(name: "Berlin")
City.create!(name: "Londes")
City.create!(name: "Paris")
City.create!(name: "Pékin")

10.times do 
    User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 3), email: Faker::Internet.email, age: Faker::Number.between(from: 1, to: 5), city: City.find(rand(1..4)))
    Tag.create!(title: Faker::Lorem.word)
end

20.times do 
    Gossip.create!(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.sentence(word_count: 10), user: User.find(rand(1..10)))
end

20.times do 
    Gossiptag.create!(tag: Tag.find(rand(1..10)), gossip: Gossip.find(rand(1..20)))
end