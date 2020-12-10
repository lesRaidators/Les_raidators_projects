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
  description: "Soutenez l'équipe Raidators",
  price: '10€',
  image_url: "seed/donation.jpg"
)
  puts "don de 10 euros"

 Product.create(
  title: 'Don 20€',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: '20€',
  image_url:"seed/donation.jpg"
)
puts "don de 20 euros"


 Product.create(
  title:  'Don 30€',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: '30€',
  image_url: "seed/donation.jpg"
)
puts "don de 30 euros"

3.times do |post|
Post.create(
  title: "Inauguration du site",
  content: "Nous voilà arriver à .............. C'est chouette.... ",
  image_url: "posts/website.jpg",
  user_id: 1
)
end
puts "-----Articles du blog-----"

Product.create(
  title:  'Caisse de vins 30€',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: '30€',
  donation_part: '0,1%',
  image_url: "https://images.unsplash.com/photo-1518101645466-7795885ff8f8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80",
  category: 1
)
puts "caisse de vin 10$"

Product.create(
  title:  'T-shirt 35',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: '35€',
  donation_part: '0,5%',
  image_url: "https://images.unsplash.com/photo-1518101645466-7795885ff8f8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80",
  category: 1
)
puts "don de 30€"

order = Order.create(
  total_price: '30',
  stripe_customer_id: 'AZERTY'
)
order.products << Product.first
puts "il a payer 30"

u = User.new
u.email = "Raidators@outlook.fr"
u.password = "123456"
u.admin = true
u.save


puts "-----Admin is here----"