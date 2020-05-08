# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroying all places"
puts "----------"
Place.destroy_all

puts "Destroying all activities"
puts "----------"
Activity.destroy_all

places_parameters = [
    {
        title: "Château du Clair de Lune",
        information: "Lieu du cocktail et de la soirée",
        subtitle: "Lieu de la réception",
        address: "48 rue Alan Seeger, 64200 Biarritz",
        photo: "clair_de_lune.png",
        phone_number: "+33.5.59.41.53.20",
        website_url: "http://www.hotelclairlune.fr/",
        price: "",
        place_type: "castle",
        logo: "<i class='fab fa-fort-awesome-alt'></i>"
    },
    {
        title: "Église d'Arcangues",
        information: "La messe y sera célébrée par l'abbé Dominique Sentucq",
        subtitle: "Lieu de la cérémonie religieuse",
        address: "Église Saint Jean-Baptiste, Arcangues",
        photo: "eglise_arcangues_2.jpeg",
        phone_number: "",
        website_url: "",
        price: "",
        place_type: "church",
        logo: "<i class='fas fa-church'></i>"
    },
    {
        title: "Hotel Laminak Arbonne",
        information: "Nombre de chambres: 6 <br>Nombre de couchages: 10",
        subtitle: "Hôtel",
        address: "Route de Saint-Pée, 64210 Arbonne",
        photo: "laminak_hotel.jpg",
        phone_number: "+33.5.59.41.95.40",
        website_url: "https://www.hotel-laminak.com/",
        price: "80€",
        place_type: "flat",
        logo: "",
        latitude: 43.426954,
        longitude: -1.5506277
    },
    {
        title: "Domaine de Bassilour",
        information: "Nombre de chambres Hôtel: 6 <br>Nombre de couchages Hôtel: 13 <br>Nombre de chambres Villa: 7 <br>Nombre de couchages Villa: 14",
        subtitle: "Hôtel et Villa",
        address: "1562 Rue Bassilour, 64210 Bidart",
        photo: "domaine_bassilour_2.jpg",
        phone_number: "+33.5.59.41.90.85",
        website_url: "https://www.domainedebassilour.com/fr/",
        price: "107-135€",
        place_type: "flat",
        logo: "",
        latitude: 43.435969,
        longitude: -1.5648707
    },
    {
        title: "Camping Le Ruisseau",
        information: "Nombre de chambres: - <br>Nombre de couchages: -",
        subtitle: "Camping",
        address: "900 Rue Burruntz, 64210 Bidart",
        photo: "camping_leruisseau.jpg",
        phone_number: "+33.5.59.41.94.50",
        website_url: "https://www.camping-le-ruisseau.fr/fr/",
        price: "60€",
        place_type: "flat",
        logo: ""
    },
    {
        title: "Villa Les Hortensias",
        information: "Nombre de chambre: 1 <br>Nombre de couchages: 2",
        subtitle: "Maison d'Hôtes",
        address: "15 chemin de la Fontaine, Quartier Chapelet, 64200 Arcangues",
        photo: "les_hortensias.jpg",
        phone_number: "+33.5.59.23.58.73",
        website_url: "https://www.chambres-hotes.fr/chambres-hotes_villa-les-hortensias_arcangues_28382.htm",
        price: "86€",
        place_type: "flat",
        logo: "",
        latitude: 43.4571208,
        longitude: -1.5367172
    },
    {
        title: "Goiz Argi",
        information: "Nombre de chambres: 9 <br>Nombre de couchages: 14",
        subtitle: "Villa",
        address: "Chemin d'Haramburua, 64200 Arcangues",
        photo: "goiz_argi.jpg",
        phone_number: "",
        website_url: "https://www.booking.com/hotel/fr/goiz-argi.fr.html?aid=301664",
        price: "153€",
        place_type: "flat",
        logo: "",
        latitude: 43.4161065,
        longitude: -1.5108787
    },
    {
        title: "Hotel Campanile",
        information: "Nombre de chambres: - <br>Nombre de couchages: -",
        subtitle: "Hôtel",
        address: "43 Rue Chapelet, 64200 Biarritz",
        photo: "campanile.jpg",
        phone_number: "+33.5.59.41.19.19",
        website_url: "https://www.campanile.com/fr/hotels/campanile-biarritz?kard=1",
        price: "55€",
        place_type: "flat",
        logo: ""
    },
    {
        title: "Hotel Aéroport Biarritz Première Classe",
        information: "Nombre de chambres: - <br>Nombre de couchages: -",
        subtitle: "Hôtel",
        address: "Boulevard Marcel Dassault, 41 Rue Chapelet, 64200 Biarritz",
        photo: "premiere_classe.jpg",
        phone_number: "+33.5.59.43.71.49",
        website_url: "https://www.premiereclasse.com/fr/france/aquitaine/hotels-biarritz",
        price: "39€",
        place_type: "flat",
        logo: "",
        latitude: 43.4663354,
        longitude: -1.5425839
    },
    {
        title: "Lapitxuri",
        information: "Nombre de chambres: 4 <br>Nombre de couchages: 8",
        subtitle: "Maison d'Hôtes",
        address: "Quartier Alotz, 64200 Arcangues",
        photo: "lapitxuri.jpg",
        phone_number: "+33.6.37.20.71.19",
        website_url: "https://www.booking.com/hotel/fr/maison-d-hotes-lapitxuri.fr.html?aid=301664",
        price: "160€",
        place_type: "flat",
        logo: "",
        latitude: 43.4170605,
        longitude: -1.5262896
    }
]

places_parameters.map do |place|
    Place.create!(place)
end

puts "Places created!"
puts "----------"

activities_parameters = [
    {
        title: "Cours de Surf - Alaia Surf Club",
        tab: "Sports",
        information: "Contacter Mathieu d'Alaia Surf Club<br>Comptez 38€/personne (session de 1h30)<br>Horaires à définir en fonction de la marée",
        address: "Plage d'Ilbarritz",
        phone_number: "+33.6.88.14.04.22",
        website_url: "http://www.alaiasurfclub.com/",
        photo: "cours_surf.png"
    },
    {
        title: "Tennis Biarritz Olympique",
        tab: "Sports",
        information: "Pour une partie de tennis sur terre battue, comptez 25€/h en terre battue extérieure et 30€/h en terre battue intérieure",
        address: "Stade d'Aguilera, Rue Cino del Duca, 64200 Biarritz",
        phone_number: "+33.5.59.01.64.74",
        website_url: "http://www.botennis.com/",
        photo: "tennis_club.jpg"
    },
    {
        title: "Golf d'Arcangues",
        tab: "Sports",
        information: "18 trous - Longueur 5285m",
        address: "Jauréguiborde, 64200 Arcangues",
        phone_number: "+33.5.59.43.10.56",
        website_url: "http://www.golfdarcangues.com/",
        photo: "golf_arcangues.jpg"
    },
    {
        title: "Golf de Biarritz Le Phare",
        tab: "Sports",
        information: "18 trous - Longueur 5402m",
        address: "2 Avenue Edith Cavell, 64200 Biarritz",
        phone_number: "+33.5.59.03.71.80",
        website_url: "http://www.golfbiarritz.com/",
        photo: "golf_biarritz_phare.jpg"
    },
    {
        title: "Golf d'Ilbarritz",
        tab: "Sports",
        information: "9 trous - Longueur 2176m",
        address: "Avenue du Château, 64200 Biarritz",
        phone_number: "+33.5.59.43.81.30",
        website_url: "http://www.golfilbarritz.com/",
        photo: "golf_ilbarritz.jpg"
    },
    {
        title: "Bello Horizonte",
        tab: "Shopping",
        information: "Magasin de décorations tenu par des amis de la famille. Style de décoration balinais et indonésien. Jan et Ingrid sauront vous accueillir tel qu'il se doit. Ils seront présents à notre mariage!",
        address: "430 avenue d'Espagne, 64210 BIDART ou 103 avenue Jalday, 64500 SAINT JEAN DE LUZ",
        phone_number: "+33.5.59.23.99.62",
        website_url: "https://bellohorizonte.eu/",
        photo: "bello_horizonte.jpg"
    },
    {
        title: "San Sebastian",
        tab: "Shopping",
        information: "Virée Shopping en Espagne",
        address: "San Sebastian, Espana",
        phone_number: "",
        website_url: "",
        photo: "san_sebastian.jpg"
    },
    {
        title: "Macarons et Gâteaux basques de Chez Adam",
        tab: "Shopping",
        information: "Allez goûter les macarons et gâteaux basques de Chez Adam<br>Des incontournables du Pays Basque",
        address: "27 place Georges Clemenceau, 64200 Biarritz",
        phone_number: "",
        website_url: "https://www.maisonadam.fr/",
        photo: "macaron_adam.jpg"
    },
    {
        title: "Pierre Oteiza",
        tab: "Shopping",
        information: "Pâtés, charcuteries et conserves du Pays Basque!",
        address: "22 Avenue du Maréchal Foch, 64200 Biarritz",
        phone_number: "+33.5.59.37.56.11",
        website_url: "https://www.pierreoteiza.com/",
        photo: "charcuterie_pierre_oteiza.jpg"    
    },
    {
        title: "Maison Laffargue",
        tab: "Shopping",
        information: "Sacs et petite maroquinerie Luzienne",
        address: "25 rue Léon Gambetta, 64500 Saint-Jean-de-Luz",
        phone_number: "+33.5.59.26.11.38",
        website_url: "https://www.maisonlaffargue.fr/58-boutique-en-ligne",
        photo: "sacs_laffargue.jpg"    
    },
    {
        title: "Plage de la Côte des Basques",
        tab: "Plages",
        information: "Cette plage a un spot de surf légendaire!",
        address: "Plage de la Côte des Basques à Biarritz",
        phone_number: "",
        website_url: "http://tourisme.biarritz.fr/fr/plages/la-cote-des-basques",
        photo: "plage_cote_basques.jpg"    
    },
    {
        title: "Plage d'Ilbarritz",
        tab: "Plages",
        information: "La plage d'enfance de Servane, donc la meilleure! On y trouve la boîte de nuit 'Le Blue Cargo'",
        address: "Plage d'Ilbarritz à Bidart",
        phone_number: "",
        website_url: "https://www.bidarttourisme.com/activites-et-loisirs/plage-d-ilbarritz-812363",
        photo: "plage_ilbarritz.jpg"    
    },
    {
        title: "La Grande Plage de Biarritz",
        tab: "Plages",
        information: "La plus connue à Biarritz!",
        address: "À Biarritz",
        phone_number: "",
        website_url: "http://tourisme.biarritz.fr/fr/plages/grande-plage",
        photo: "grande_plage_biarritz.jpg"    
    },
    {
        title: "La plage de Saint-Jean-de-Luz",
        tab: "Plages",
        information: "Très au calme, il faut aller voir Saint-Jean-de-Luz, village Ô combien connu de la région",
        address: "À Saint-Jean-de-Luz",
        phone_number: "",
        website_url: "https://www.saint-jean-de-luz.com/fr/a-voir-a-faire/les-plages2/",
        photo: "plage_saint_jean_luz.jpg"    
    },
    {
        title: "Balade sur la Rhune",
        tab: "Balades",
        information: "La Rhune et son petit train à crémaillère vous emmènera à 905m d'altitude.<br>La Rhune, montagne sacrée du Pays Basque, offre l'un des plus beaux panoramas que l'on puisse imaginer",
        address: "Variable selon le point de départ",
        phone_number: "",
        website_url: "https://kindabreak.com/itineraires-la-rhune-randonnee-paysbasque/",
        photo: "rhune_biarritz.jpg"    
    },
    {
        title: "Talaia - Le sentier du littoral",
        tab: "Balades",
        information: "Un peu plus de 54kms de randonnée pédestre entre Bidart et Hendaye et entre Hondarribia et San Sebastian",
        address: "Variable selon le point de départ",
        phone_number: "",
        website_url: "https://randonnee.tourisme64.com/grands-itineraires/sentier-du-littoral/",
        photo: "balade_sentier_littoral.jpeg"    
    }
]



activities_parameters.map do |activity|
    Activity.create!(activity)
end

puts "Activities created!"
puts "----------"