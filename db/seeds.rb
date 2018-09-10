# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.username = 'admin'
user.email = 'admin@lifo.com'
user.password = "admin"
user.save


299.times do
  user = User.new
  user.username = Faker::Internet.username
  user.email = 'cdhagmann+lifo@gmail.com'
  user.password = "user"
  user.save
end

25.times do
  Post.create!  (
    title: Faker::Lorem.sentence, 
    description: Faker::Lorem.paragraph,
    link: Faker::Internet.url,
    user_id: 1 + rand(10),
  )
end

500.times do
  Upvote.create(
    user_id: 1 + rand(300), 
    post_id: 1 + rand(25)
  )
end