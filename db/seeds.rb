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



Product.create(
  title: 'Don 10€',
  description: "Soutenez l'équipe Raidators",
  price: 1000/100,
  image_url: "seed/donation.jpg"
)
  puts "don de 10 euros"

 Product.create(
  title: 'Don 20€',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: 2000/100,
  image_url:"seed/donation.jpg"
)
puts "don de 20 euros"


 Product.create(
  title:  'Don 30€',
  description: 'Participer aux frais logistiques et aider Raidators à atteindre son objectif',
  price: 3000/100,
  image_url: "seed/donation.jpg"
)
puts "don de 30 euros"

Product.create(
  title:  'Sweat-shirt à capuche Raidators',
  description: "Un pull en laine qui portera chaud tout l'hiver et même les soirs d'été. 65% Coton - 35% Polyester.",
  price: 3500/100,
  image_url: "products/pull.png",
  category: 1
)


Product.create(
  title:  'Casquette Raidators',
  description: "Casquette avec logo raidators - 100% coton",
  price: 1500/100,
  image_url: "products/casquette.png",
  category: 1
)

Product.create(
  title:  'Bonnet Raidators',
  description: "Bonnet avec logo raidators ",
  price: 0500/10,
  image_url: "products/Bonnet.png",
  category: 1
)


puts "-----Pull/Casquette/Casquette------"



3.times do |post|
Post.create(
  title: "Inauguration du site",
  content: "Nous voilà arriver à .............. C'est chouette.... ",
  image_url: "posts/website.jpg",
  user_id: 1
)
end
puts "-----Articles du blog-----"

order = Order.create(
  user: User.first,
  total_price: 3000,
  stripe_customer_id: 'AZERTY'
)
JoinOrderProduct.create(order: Order.last, product: Product.last, quantity: 4)
puts "il a payer 30"

u = User.new
u.email = "Raidators@outlook.fr"
u.password = "123456"
u.admin = true
u.save


puts "-----Admin is here----"