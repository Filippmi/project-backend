# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create([
  {name: "Basement remodel", description: "Adding home theater"},
  {name: "Kitchen remodel", description: "Start date: 03/25/21 Finish by: 04/01/22"}
])

Todo.create([
  {task: "Calculate budget"},
  {task: "Find designer"},
  {task: "Find contractor"},
  {task: "Figure out what the heck is going on lol"}
])