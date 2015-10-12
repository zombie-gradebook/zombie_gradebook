# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:


Parent.create!(name: "Parent 1", email: "p1@parent.com", password: "pword")
Parent.create!(name: "Parent 2", email: "p2@parent.com", password: "pword")


Teacher.create!(name: "Jace Beleren", email: "t1@teacher.com", password: "pword")
Teacher.create!(name: "Liliana Vess", email: "t2@teacher.com", password: "pword")


Student.create!(name: "Student 1", email:"s1@student.com", password: "pword", teacher_id: 1)
Student.create!(name: "Student 2", email:"s2@student.com", password: "pword", teacher_id: 1)
Student.create!(name: "Student 3", email:"s3@student.com", password: "pword", teacher_id: 1)
Student.create!(name: "Student 4", email:"s4@student.com", password: "pword", teacher_id: 1)
Student.create!(name: "Student 5", email:"s5@student.com", password: "pword", teacher_id: 1)
Student.create!(name: "Student 6", email:"s6@student.com", password: "pword", teacher_id: 2)
Student.create!(name: "Student 7", email:"s7@student.com", password: "pword", teacher_id: 2)
Student.create!(name: "Student 8", email:"s8@student.com", password: "pword", teacher_id: 2)
Student.create!(name: "Student 9", email:"s9@student.com", password: "pword", teacher_id: 2)
Student.create!(name: "Student 10", email:"s10@student.com", password: "pword", teacher_id: 2)


Grade.create!(assignment_name:"Homework 1", grade: "B +", student_id: 1 )
Grade.create!(assignment_name:"Homework 2", grade: "B +", student_id: 1 )
Grade.create!(assignment_name:"Homework 3", grade: "B +", student_id: 1 )
Grade.create!(assignment_name:"Homework 4" , grade: "B +", student_id: 1 )
Grade.create!(assignment_name:"Homework 1", grade: "B +", student_id: 2 )
Grade.create!(assignment_name:"Homework 2", grade: "B +", student_id: 2 )
Grade.create!(assignment_name:"Homework 3", grade: "B +", student_id: 2 )
Grade.create!(assignment_name:"Homework 4", grade: "B +", student_id: 2 )
