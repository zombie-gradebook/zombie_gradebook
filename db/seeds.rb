# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
    Teacher.create(name: "Jace Beleren", email: "mind_sculptor@mtg.com", password: "pword")
    Student.create(name: "Jace's Archivist", email:"ilikejace@mtg.com", password: "pword", teacher_id: 1)
