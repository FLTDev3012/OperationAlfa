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


file = URI.open("https://lh3.googleusercontent.com/d9iOns4Q6RQl4ozES9D1hsaSfTad0b1LLYX64K1u9x9PuFcMa61uhw6K_IS8ukm6yKSZJOfC-nhnPuEAFCSmuRZQISzV3a1gm843UZWTrs6huQ=s750")
vehicule1 = Vehicule.create(marque: "ALFA ROMEO", modele: "350z", user_id: user1.id, enregistrement: "2017", kilometrage: 37500, taille: 2.0, puissancech: 120, puissancecv: 5, carburant: "Diesel", boite: "Automatique", prix: 23000, carrosserie: "Break", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
vehicule1.save

file = URI.open("https://www.challenges.fr/assets/img/2017/11/02/cover-r4x3w1200-59fb0424953e9-jeep-wrangler-unlimited-rubicon-24-jpeg.jpg")
vehicule2 = Vehicule.create(marque: "JEEP", modele: "350z", user_id: user1.id, enregistrement: 2010, kilometrage: 110000, taille: 1.9, puissancech: 180, puissancecv: 7, carburant: "Diesel", boite: "Manuelle", prix: 27000, carrosserie: "Cross", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
vehicule2.save

file = Rails.root.join('app', 'assets', 'images', 'car1.jpg')
vehicule3 = Vehicule.create(marque: "ALFA ROMEO", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car2.jpg')
vehicule3 = Vehicule.create(marque: "ALFA ROMEO", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car3.jpg')
vehicule3 = Vehicule.create(marque: "ALFA ROMEO", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car4.jpg')
vehicule3 = Vehicule.create(marque: "ALFA ROMEO", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car5.jpg')
vehicule3 = Vehicule.create(marque: "ALFA ROMEO", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car6.jpg')
vehicule3 = Vehicule.create(marque: "FIAT", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car7.jpg')
vehicule3 = Vehicule.create(marque: "PORSCHE", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car8.jpg')
vehicule3 = Vehicule.create(marque: "FIAT", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

file = Rails.root.join('app', 'assets', 'images', 'car9.jpg')
vehicule3 = Vehicule.create(marque: "ALFA ROMEO", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5)
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save



p "------ #{Vehicule.count} vehicule created ----------"
