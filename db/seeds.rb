# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroy Seed'
User.destroy_all
puts 'Creating new Seed'
puts 'Creating User'

john = User.create!(email: 'john@gmail.com', password: 'password')
michelle = User.create!(email: 'michelle@gmail.com', password: 'password')

puts 'Creating task'

task_one = Task.new(title: 'Study', due_date: Date.current + 1, description: 'Study for my test')
task_one.user = john
task_one.save

task_two = Task.new(title: 'Wash the dishes', due_date: Date.current, description: 'Wash the dishes before the wife arrives')
task_two.user = john
task_two.save

task_three = Task.new(title: 'Fix the toilet', due_date: Date.current + 5, description: 'Fix the downstair toilet which is leaking')
task_three.user = michelle
task_three.save

puts 'Seed file created'
