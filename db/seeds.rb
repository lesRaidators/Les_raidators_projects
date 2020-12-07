# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Post.destroy_all


Product.create(
  title: 'Don 10€',
  description: "Soutenez l équipe Raidators",
  price: '10€',
  image_url: "https://images.unsplash.com/photo-1518101645466-7795885ff8f8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80")
  puts "don de 10 euros"

Product.create(
  title: 'Don 20€',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: '20€',
  image_url:"https://images.unsplash.com/photo-1518101645466-7795885ff8f8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80"
)
puts "don de 20 euros"


Product.create(
  title:  'Don 30€',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: '30€',
  image_url:"https://images.unsplash.com/photo-1518101645466-7795885ff8f8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80"
)
puts "don de 30€"

10.times do
Post.create(
  title: "Les aventures d'Emilie",
  content: "Nous voilà arriver à .............. C'est chouette.... ",
  image_url: "https://images.unsplash.com/photo-1518101645466-7795885ff8f8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80",
  user_id: 1
)
end
puts "articles du blog"

u = User.new
u.email = "Raidators@outlook.fr"
u.password = "123456"
u.admin = true
u.save


puts "Admin is here"