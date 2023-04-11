# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"


User.destroy_all
p "------  user destroy ----------"

Vehicule.destroy_all

p "------  vehicule destroy ----------"

user1 = User.create(email: "dorian@gmail.com", password: "coucou")
user2 = User.create(email: "dorian2@gmail.com", password: "coucou")


p "------ #{User.count} user created ----------"

file = URI.open("https://lh3.googleusercontent.com/d9iOns4Q6RQl4ozES9D1hsaSfTad0b1LLYX64K1u9x9PuFcMa61uhw6K_IS8ukm6yKSZJOfC-nhnPuEAFCSmuRZQISzV3a1gm843UZWTrs6huQ=s750")
vehicule1 = Vehicule.create(marque: "Alfa", modele: "350z", user_id: user1.id)
vehicule1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
vehicule1.save


file = URI.open("https://www.challenges.fr/assets/img/2017/11/02/cover-r4x3w1200-59fb0424953e9-jeep-wrangler-unlimited-rubicon-24-jpeg.jpg")
vehicule2 = Vehicule.create(marque: "Jeep", modele: "750q", user_id: user1.id)
vehicule2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
vehicule2.save

file = Rails.root.join('app', 'assets', 'images', 'car1.jpg')
vehicule3 = Vehicule.create(marque: "test", modele: "test", user_id: user1.id)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

p "------ #{Vehicule.count} vehicule created ----------"
