# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying existing seeds"

Message.destroy_all
UserTag.destroy_all
Tag.destroy_all
Match.destroy_all
User.destroy_all

puts "Seeding Data"

puts "Seeding Users"

jeff = User.create(
    first_name: 'Jeff',
    password: '123',
    veggie_type: 'lacto-ovo',
    email: 'jjenkins120@gmail.com',
    bio: 'Just a guy looking for veggies',
    interested_in: 'the ladies',
    birth_date: (DateTime.now - 4000),
    how_far: 5,
    profile_img_url: 'https://jeffajenkins.com/static/media/face.b1c5f729.jpg'
)

austin = User.create(
    first_name: 'Austin',
    password: '123',
    veggie_type: '',
    email: '',
    bio: 'Just another guy looking for veggies',
    interested_in: 'the ladies and the fellas',
    birth_date: (DateTime.now - 4000),
    how_far: 5,
    profile_img_url: ''
)


puts "Done!"