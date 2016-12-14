# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#users = User.create([{email: 'jeremy.petit3@free.fr'}, {password: 'azerty'}, {confirmation_password: 'azerty'}, {admin: true}])
#users = User.create([{email: 'falcou.franck@gmail.com'}, {password: 'azerty'}, {password_confirmation: 'azerty'}, {admin: true}, {confirmed_at: '2016-12-14 10:40:22'}])
#users = User.create([{email: 'falcou.franck@gmail.com'}, {password: 'azerty'}, {password_confirmation: 'azerty'}, {admin: true}])
#users.toggle!(:admin)

User.create(
    email: "falcou.franck@gmail.com",
    password: "azerty",
    confirmed_at: "2016-12-14 13:18:01.71971",
    admin: true
)

User.create(
    email: "jeremy.petit3@free.fr",
    password: "azerty",
    confirmed_at: "2016-12-14 13:19:01.71971",
    admin: true
)

User.create(
    email: "user@gmail.com ",
    password: "azerty",
    confirmed_at: "2016-12-14 14:18:01.71971",
    admin: false
)

#user = User.create! :email => 'jeremy.petit3@free.fr', :password => 'azerty', :password_confirmation => 'azerty'