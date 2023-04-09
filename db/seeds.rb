# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
p "------  user destroy ----------"

Vehicule.destroy_all

p "------  vehicule destroy ----------"

user1 = User.create(email: "dorian@gmail.com", password: "coucou")
user2 = User.create(email: "dorian2@gmail.com", password: "coucou")


p "------ #{User.count} user created ----------"

# file = URI.open("https://www.pokepedia.fr/images/d/d1/Pikachu_de_Sacha.png?20191229224252")
vehicule1 = Vehicule.create(marque: "Alfa", modele: "350z", user_id: user1.id)
# vehicule1.photo.attach(io: file, filename: "pikachu.png", content_type: "image/png")
vehicule1.save

vehicule2 = Vehicule.create(marque: "Jeep", modele: "750q", user_id: user1.id)
# vehicule1.photo.attach(io: file, filename: "pikachu.png", content_type: "image/png")
vehicule2.save

p "------ #{Vehicule.count} vehicule created ----------"
