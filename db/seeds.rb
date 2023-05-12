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

Commentaire.destroy_all

p "------  commentaire destroy ----------"

Piece.destroy_all

p "------  piece destroy ----------"

Member.destroy_all

p "------  member destroy ----------"

user1 = User.create(email: "dorian@gmail.com", password: "coucou")
user2 = User.create(email: "dorian2@gmail.com", password: "coucou")

p "------ #{User.count} user created ----------"

file = URI.open("https://lh3.googleusercontent.com/d9iOns4Q6RQl4ozES9D1hsaSfTad0b1LLYX64K1u9x9PuFcMa61uhw6K_IS8ukm6yKSZJOfC-nhnPuEAFCSmuRZQISzV3a1gm843UZWTrs6huQ=s750")
vehicule1 = Vehicule.create(marque: "Alfa Romeo", modele: "350z", user_id: user1.id, enregistrement: "2017", kilometrage: 37500, taille: 2.3, puissancech: 120, puissancecv: 5, carburant: "Diesel", boite: "Automatique", prix: 23006.67, carrosserie: "Break", couleur: "Rouge", proprietaires: 2, dioxy: 5,reservation: true, portes: 5, places: 5 , description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
vehicule1.save

p "------ #{Vehicule.count} vehicule created ----------"

file = URI.open("https://www.challenges.fr/assets/img/2017/11/02/cover-r4x3w1200-59fb0424953e9-jeep-wrangler-unlimited-rubicon-24-jpeg.jpg")
vehicule2 = Vehicule.create(marque: "Jeep", modele: "Monster", user_id: user1.id, enregistrement: 2010, kilometrage: 110000, taille: 1.9, puissancech: 180, puissancecv: 7, carburant: "Diesel", boite: "Manuelle", prix: 27000.54, carrosserie: "Cross", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
vehicule2.save

p "------ #{Vehicule.count} vehicule created ----------"

file = Rails.root.join('app', 'assets', 'images', 'car1.jpg')
vehicule3 = Vehicule.create(marque: "Alfa Romeo", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990.45, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule3.save

p "------ #{Vehicule.count} vehicule created ----------"

file = Rails.root.join('app', 'assets', 'images', 'car2.jpg')
vehicule4 = Vehicule.create(marque: "Alfa Romeo", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", vendu: true, boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule4.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule4.save

p "------ #{Vehicule.count} vehicule created ----------"

file = Rails.root.join('app', 'assets', 'images', 'car3.jpg')
vehicule5 = Vehicule.create(marque: "Alfa Romeo", modele: "Mito", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule5.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule5.save

p "------ #{Vehicule.count} vehicule created ----------"

file = Rails.root.join('app', 'assets', 'images', 'car4.jpg')
vehicule6 = Vehicule.create(marque: "Alfa Romeo", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule6.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule6.save

p "------ #{Vehicule.count} vehicule created ----------"

file = Rails.root.join('app', 'assets', 'images', 'car5.jpg')
vehicule7 = Vehicule.create(marque: "Alfa Romeo", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule7.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule7.save

p "------ #{Vehicule.count} vehicule created ----------"


file = Rails.root.join('app', 'assets', 'images', 'car6.jpg')
vehicule8 = Vehicule.create(marque: "Fiat", modele: "500", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule8.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule8.save

p "------ #{Vehicule.count} vehicule created ----------"


file = Rails.root.join('app', 'assets', 'images', 'car7.jpg')
vehicule9 = Vehicule.create(marque: "Porsche", modele: "511", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule9.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule9.save

p "------ #{Vehicule.count} vehicule created ----------"


file = Rails.root.join('app', 'assets', 'images', 'car8.jpg')
vehicule10 = Vehicule.create(marque: "Fiat", modele: "500", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule10.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule10.save

p "------ #{Vehicule.count} vehicule created ----------"


file = Rails.root.join('app', 'assets', 'images', 'car9.jpg')
vehicule11 = Vehicule.create(marque: "Alfa Romeo", modele: "Giulia", user_id: user1.id, enregistrement: 2017, kilometrage: 53200, taille: 2.0, puissancech: 280, puissancecv: 5, carburant: "Essence", boite: "Manuelle", prix: 36990, carrosserie: "Sport", couleur: "Rouge", proprietaires: 2, dioxy: 5, portes: 5, places: 5, description: "L'Alfa Romeo Giulia est une voiture qui ne manque pas de style et de puissance. Avec son design dynamique et agressif, cette voiture attire l'attention sur la route. Sous le capot, la Giulia est équipée d'un moteur turbo essence de 2,0 litres ou d'un moteur diesel de 2,2 litres, qui fournissent tous les deux une puissance impressionnante et une accélération rapide. L'intérieur de la Giulia est également très impressionnant, avec des sièges en cuir confortables et une technologie de pointe qui inclut un système d'infodivertissement de 8,8 pouces avec navigation GPS, ainsi que des capteurs de stationnement et une caméra de recul. Les équipements de sécurité incluent des freins à disque de haute performance, des airbags frontaux et latéraux, ainsi que des systèmes d'assistance à la conduite tels que la détection de collision avant. En résumé, l'Alfa Romeo Giulia est une voiture qui allie style, puissance et technologie de pointe pour offrir une expérience de conduite exceptionnelle. Si vous recherchez une voiture qui vous procure une sensation de sportivité et d'élégance, la Giulia est un excellent choix.")
vehicule11.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
vehicule11.save



p "------ #{Vehicule.count} vehicule created !!!!!!----------"

commentaire1 = Commentaire.create(nom: "mickael", prenom: "Jackson", email: "mickael62@gmail.com", text: "voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text!", reponse: "voici la reponse voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text! voici le trestres tres tres tres tres tres tres tres tres tres tres long text!")

commentaire2 = Commentaire.create(nom: "jean", prenom: "mickael", email: "jean62@gmail.com", text: "voici le trestres tres tres tres tres tres tres tres tres tres tres long text!", reponse: "tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres tres")

commentaire3 = Commentaire.create(nom: "rene", prenom: "Jackson", email: "rene62@gmail.com", text: "voici le trestres tres tres tres tres tres tres tres tres tres tres long text!")

commentaire4 = Commentaire.create(nom: "philippe", prenom: "Jackson", email: "phiphi62@gmail.com", text: "voici le trestres tres tres tres tres tres tres tres tres tres tres long text!")

commentaire5 = Commentaire.create(nom: "andre", prenom: "philippe", email: "andre@gmail.com", text: "voici le trestres tres tres tres tres tres tres tres tres tres tres long text!")

p "------ #{Commentaire.count} commentaire created ----------"


file = URI.open("https://media.istockphoto.com/id/1059972498/fr/photo/pistons-de-moteur-m%C3%A9canisme-de-vilebrequin-rendu-3d.jpg?s=612x612&w=0&k=20&c=tt-hhMhs4lAD1PlZLFn7Hev9GS9gva705_n5GTqcvBw=")
piece1 = Piece.create(nom: "Piece1", description: "Magnifique piece", prix: 35)
piece1.photo.attach(io: file, filename: "p1.png", content_type: "image/png")
piece1.save



file = URI.open("https://media.istockphoto.com/id/1059972498/fr/photo/pistons-de-moteur-m%C3%A9canisme-de-vilebrequin-rendu-3d.jpg?s=612x612&w=0&k=20&c=tt-hhMhs4lAD1PlZLFn7Hev9GS9gva705_n5GTqcvBw=")
piece2 = Piece.create(nom: "Piece2", description: "Magnifique piece blabla blablabla blabla blablabla blabla blablabla blabla blablabla blabla blablabla blabla ", prix: 45)
piece2.photo.attach(io: file, filename: "p2.png", content_type: "image/png")
piece2.save



file = URI.open("https://media.istockphoto.com/id/1059972498/fr/photo/pistons-de-moteur-m%C3%A9canisme-de-vilebrequin-rendu-3d.jpg?s=612x612&w=0&k=20&c=tt-hhMhs4lAD1PlZLFn7Hev9GS9gva705_n5GTqcvBw=")
piece3 = Piece.create(nom: "Piece3", description: "Magnifique piece", prix: 550)
piece3.photo.attach(io: file, filename: "p3.png", content_type: "image/png")
piece3.save



file = URI.open("https://media.istockphoto.com/id/1059972498/fr/photo/pistons-de-moteur-m%C3%A9canisme-de-vilebrequin-rendu-3d.jpg?s=612x612&w=0&k=20&c=tt-hhMhs4lAD1PlZLFn7Hev9GS9gva705_n5GTqcvBw=")
piece4 = Piece.create(nom: "Piece3", description: "Magnifique piece", prix: 550)
piece4.photo.attach(io: file, filename: "p3.png", content_type: "image/png")
piece4.save



file = URI.open("https://media.istockphoto.com/id/1059972498/fr/photo/pistons-de-moteur-m%C3%A9canisme-de-vilebrequin-rendu-3d.jpg?s=612x612&w=0&k=20&c=tt-hhMhs4lAD1PlZLFn7Hev9GS9gva705_n5GTqcvBw=")
piece5 = Piece.create(nom: "Piece3", description: "Magnifique piece", prix: 550)
piece5.photo.attach(io: file, filename: "p3.png", content_type: "image/png")
piece5.save

p "------ #{Piece.count} piece created ----------"

file = URI.open("https://t3.ftcdn.net/jpg/02/00/90/24/360_F_200902415_G4eZ9Ok3Ypd4SZZKjc8nqJyFVp1eOD6V.jpg")
member1 = Member.create(nom: "Dujardin", prenom: "Jean", job: "Directeur", description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.")
member1.photo.attach(io: file, filename: "m1.png", content_type: "image/png")
member1.save

file = URI.open("https://media.npr.org/assets/img/2022/11/08/ap22312071681283-0d9c328f69a7c7f15320e8750d6ea447532dff66.jpg")
member2 = Member.create(nom: "yun", prenom: "zing", job: "Mécanicien", description: "Lorem ipsum dolor sit amet consectetur adipisicing elit.")
member2.photo.attach(io: file, filename: "m2.png", content_type: "image/png")
member2.save

file = URI.open("https://i.insider.com/5cb8b133b8342c1b45130629?width=700")
member3 = Member.create(nom: "Barthez", prenom: "Fabien", job: "Mécanicienne", description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.")
member3.photo.attach(io: file, filename: "m3.png", content_type: "image/png")
member3.save

file = URI.open("https://img.freepik.com/free-photo/young-man-with-beard-round-glasses_273609-5867.jpg")
member4 = Member.create(nom: "Rocher", prenom: "Yves", job: "exemple", description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.")
member4.photo.attach(io: file, filename: "m4.png", content_type: "image/png")
member4.save

file = URI.open("https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png")
member5 = Member.create(nom: "Iop", prenom: "Feu", job: "exemple", description: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. blafkds gg xdxkk  drdyhs ytgiugf yyftdf")
member5.photo.attach(io: file, filename: "m5.png", content_type: "image/png")
member5.save
p "------ #{Member.count} member created ----------"

# Flat.create(address: "801 Avenue Maxence Van Der Meersch, 62780 Cucq", name: "PlanéteAlfa")
