# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
    Teacher.create(name: "Patrick Swayze", email: "roadhouse@email.com", password: "pword")
    Teacher.create(name: "Jace Beleren", email: "mind_sculptor@mtg.com", password: "pword")
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
reed = Parent.create!(name: "Mr. Reed", email: "reed@parent.com", password: "pword")
mann = Parent.create!(name: "Mrs. Mann", email: "mann@parent.com", password: "pword")
