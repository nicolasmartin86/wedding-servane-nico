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
        information: "La messe y sera célébrée par le père",
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