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
second_user = User.create!(email: Faker::Internet.email, password: 'password')

puts 'Creating task'

4.times do
  task = Faker::Hobby.activity
  task_one = Task.new(title: task, due_date: Date.current + 1, description: "I really need to do some #{task}")
  task_one.user = john
  task_one.save
end

task_three = Task.new(title: 'Fix the toilet', due_date: Date.current + 5, description: 'Fix the downstair toilet which is leaking')
task_three.user = second_user
task_three.save

puts 'Seed file created'
