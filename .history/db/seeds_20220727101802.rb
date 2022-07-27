# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.destroy_all
Student.destroy_all

puts 'seeding ....'
vidhi  = Instructor.create(name: "Vidhi")
raul   = Instructor.create(name: "Raul")
david = Instructor.create(name: "David")

/

puts 'completed seeds'