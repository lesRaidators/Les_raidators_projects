# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Post.destroy_all
Order.destroy_all
Comment.destroy_all


u = User.new
u.email = "Raidators@outlook.fr"
u.password = "123456"
u.admin = true
u.save


puts "-----Admin is here----"