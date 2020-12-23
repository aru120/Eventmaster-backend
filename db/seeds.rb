# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserEvent.destroy_all
Event.destroy_all
User.destroy_all

User.create!(username: "KevinH", name: "Kevin Huang", password: "1234", zipcode: "11219" )
User.create!(username: "KarinaG", name: "Karina Guerra", password: "1234", zipcode: "11223" )
User.create!(username: "BobD", name: "Bob Done", password: "1234", zipcode: "12321" )


Event.create!(title: "I dunno", artists:["Michael","David","John"], venue:"Order Hall", date:"01-01-21",image: "https://i.guim.co.uk/img/media/20098ae982d6b3ba4d70ede3ef9b8f79ab1205ce/0_0_969_581/master/969.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=a368f449b1cc1f37412c07a1bd901fb5")
Event.create!(title: "Event 2", artists:["Beyonce","Drake","Jay-Z"], venue:"MSQ", date:"01-20-21",image: "https://i.guim.co.uk/img/media/20098ae982d6b3ba4d70ede3ef9b8f79ab1205ce/0_0_969_581/master/969.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=a368f449b1cc1f37412c07a1bd901fb5")

UserEvent.create!(user_id: User.all.sample.id, event_id: Event.all.sample.id)