# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fists = Weapon.create({name: "fists"})
chair = Weapon.create({name: "chair"})
bubble_gun = Weapon.create({name: "bubble gun"})

vote = Power.create({name: "vote"})
confidence = Power.create({name: "confidence"})
speak_up = Power.create({name: "speak up"})

# citizen = Hero.create({name: "Citizen", weapon: fists})

# HeroAttribute.create({hero: citizen, power: vote})
# HeroAttribute.create({hero: citizen, power: confidence})