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


@product_1 = Product.new(
  title: 'Don 10€',
  description: "Soutenez l'équipe Raidators",
  price: 1000/100
)
  @product_1.avatar.attach(io: File.open('app/assets/images/seed/donation.jpg'), filename: 'donation.jpg')
  @product_1.save

  puts "------don de 10 euros--------"



@product_2 = Product.new(
title: 'Don 20€',
description: "Participer aux frais logistiques et aider Raidators à atteindre son objectif",
price: 2000/100
)
@product_2.avatar.attach(io: File.open('app/assets/images/seed/donation.jpg'), filename: 'donation.jpg')
@product_2.save

puts "------don de 20 euros--------"



@product_3 = Product.new(
  title: 'Don 30€',
  description: "Participer aux frais logistiques et aider Raidators à atteindre son objectif",
  price: 3000/100
)
  @product_3.avatar.attach(io: File.open('app/assets/images/seed/donation.jpg'), filename: 'donation.jpg')
  @product_3.save

  puts "------don de 30 euros--------"
  



@product_4 = Product.new(
title: 'Sweat-shirt à capuche Raidators',
description: "Un pull en laine qui portera chaud tout l'hiver et même les soirs d'été. 65% Coton - 35% Polyester.",
price: 3500/100,
category: 1
)
@product_4.avatar.attach(io: File.open('app/assets/images/products/pull.png'), filename: 'pull.png')
@product_4.save



@product_5 = Product.new(
title: 'Casquette Raidators',
description: "Casquette avec logo raidators - 100% coton",
price: 1500/100,
category: 1
)
@product_5.avatar.attach(io: File.open('app/assets/images/products/casquette.png'), filename: 'casquette.png')
@product_5.save


@product_5 = Product.new(
title: 'Bonnet Raidators',
description: "Bonnet avec logo raidators",
price: 0500/10,
category: 1
)
@product_5.avatar.attach(io: File.open('app/assets/images/products/Bonnet.png'), filename: 'Bonnet.png')
@product_5.save

puts "-----Pull/Casquette/Casquette------"




3.times do |post|
@post = Post.create(
title: 'Article dingue',
content: "Nous voilà arriver à .............. C'est chouette....",
user_id: 1
)
end
@post.avatar.attach(io: File.open('app/assets/images/posts/website.jpg'), filename: 'website.jpg')
@post.save

puts "-----Articles du blog-----"


u = User.new
u.email = "Raidators@yopmail.com"
u.password = "123456"
u.admin = true
u.save


puts "-----Admin is here----"