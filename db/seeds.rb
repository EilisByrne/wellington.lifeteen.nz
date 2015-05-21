# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create([{ name: "Coordinator", description: "temp" }, { name: "CORE Member", description: "temp" }, { name: "Admin", description: "awesomest" }])

User.create({ name: "Eilis", description: "bestest", email: "byrne.eilis@gmail.com", password: "changeThis", password_confirmation: "changeThis", role: Role.find_by_name("Admin")})