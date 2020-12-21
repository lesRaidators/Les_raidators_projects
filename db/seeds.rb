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
  price: 1000,
  category: "donation",
  donation_part: 100
)
  @product_1.avatar.attach(io: File.open('app/assets/images/seed/donation.jpg'), filename: 'donation.jpg')
  @product_1.save

  puts "------don de 10 euros--------"



@product_2 = Product.new(
  title: 'Don 20€',
  description: "Participer aux frais logistiques et aider Raidators à atteindre son objectif",
  price: 2000,
  category: "donation",
  donation_part: 100
)
@product_2.avatar.attach(io: File.open('app/assets/images/seed/donation.jpg'), filename: 'donation.jpg')
@product_2.save

puts "------don de 20 euros--------"



@product_3 = Product.new(
  title: 'Don 30€',
  description: "Participer aux frais logistiques et aider Raidators à atteindre son objectif",
  price: 3000,
  category: "donation",
  donation_part: 100
)
  @product_3.avatar.attach(io: File.open('app/assets/images/seed/donation.jpg'), filename: 'donation.jpg')
  @product_3.save

  puts "------don de 30 euros--------"




@product_4 = Product.new(
title: 'Sweat Raidators',
description: "Un pull en laine qui portera chaud tout l'hiver et même les soirs d'été. 65% Coton - 35% Polyester.",
price: 3500,
category: 'merchandising',
donation_part: 5
)
@product_4.avatar.attach(io: File.open('app/assets/images/products/pull.png'), filename: 'pull.png')
@product_4.save



@product_5 = Product.new(
title: 'Casquette Raidators',
description: "Casquette avec logo raidators - 100% coton",
price: 1500,
category: 'merchandising',
donation_part: 10
)
@product_5.avatar.attach(io: File.open('app/assets/images/products/casquette.png'), filename: 'casquette.png')
@product_5.save


@product_5 = Product.new(
title: 'Bonnet Raidators',
description: "Bonnet avec logo raidators",
price: 500,
category: 'merchandising',
donation_part: 10
)
@product_5.avatar.attach(io: File.open('app/assets/images/products/Bonnet.png'), filename: 'Bonnet.png')
@product_5.save

puts "-----Pull/Casquette/Casquette------"



@post_1 = Post.create(
title: 'Inauguration de notre site',
content: "Ça y est, il est là, la version 2.0 du site des Raidators. C'est notre point de départ. C'est comme un être cher que l'on attend. Il est là, avec plein de fonctionnalités.
Bon, vous l'aviez compris, on est content, mais pourquoi ? Ce site offre plus de fonctionnalité que le précédent. Et oui, si vous être particuliers vous pouvez nous faire un don. Si vous êtes
un professionnel, vous pouvez nous sponsoriser financièrement (si si on vous promet) ou nous aider à collecter du matériel au sein de votre établissement.",
user_id: 1
)
@post_1.avatar.attach(io: File.open('app/assets/images/posts/website.jpg'), filename: 'website.jpg')
@post_1.save

@post_2 = Post.create(
title: 'Achat de notre Peugeot 205',
content: "En Juillet dernier, Hélène a trouvé cette beauté sur le marché de la peugeot 205. Nous sommes heureux de vous présenter la Big Berta surnommée la Bb",
user_id: 1
)
@post_2.avatar.attach(io: File.open('app/assets/images/partnership/205.png'), filename: '205.png')
@post_2.save


@post_3 = Post.create(
title: 'Une petite surprise',
content: "Pour le moment nous sommes dans les préparatifs, mise en place du site, etc. Nous nous réunissons souvent pour pouvoir vous préparer une petite surprise qui
arrivera très rapidement. On vous laisse avec cette photo.",
user_id: 1
)
@post_3.avatar.attach(io: File.open('app/assets/images/posts/Surprise.png'), filename: 'Surprise.png')
@post_3.save




puts "-----Articles du blog-----"


u = User.new
u.email = "raidator@yopmail.com"
u.password = "123456"
u.admin = true
u.save


puts "-----Admin is here----"
