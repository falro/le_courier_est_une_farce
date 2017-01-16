# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(
        email: "falcou.franck@gmail.com",
        password: "azerty",
        confirmed_at: "2016-12-14 13:18:01",
        admin: true
    )

puts u1.errors.full_messages

u2 = User.create(
    email: "test@gmail.com",
    password: "azerty",
    confirmed_at: "2016-12-14 13:18:01",git 
)

puts u2.errors.full_messages

u3 = User.create(
    email: "jeremy.petit3@free.fr",
    password: "azerty",
    confirmed_at: "2016-12-14 13:18:01",
    admin: true
)

puts u3.errors.full_messages