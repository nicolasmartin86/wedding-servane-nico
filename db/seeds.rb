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
        information: "Lorem ipsum",
        subtitle: "Lieu de la réception",
        address: "48 rue Alan Seeger, 64200 Biarritz",
        photo: "clair_de_lune.png",
        phone_number: "+33.5.XX.XX.XX.XX",
        website_url: "",
        price: "",
        place_type: "castle",
        logo: "<i class='fab fa-fort-awesome-alt'></i>"
    },
    {
        title: "Église d'Arcangues",
        information: "Lorem ipsum",
        subtitle: "Lieu de la cérémonie religieuse",
        address: "Église Saint Jean-Baptiste, Arcangues",
        photo: "arcangues.png",
        phone_number: "+33.5.XX.XX.XX.XX",
        website_url: "",
        price: "",
        place_type: "church",
        logo: "<i class='fas fa-church'></i>"
    },
    {
        title: "Pierre et Vacances",
        information: "Lorem ipsum",
        subtitle: "Logement trop cool",
        address: "Le Bourg, 64200 Arcangues",
        photo: "pierre_et_vacances.jpg",
        phone_number: "+33.5.59.43.30.00",
        website_url: "https://www.pierreetvacances.com/fr-fr/fp_AGL_location-residence-les-terrasses-d-arcangues",
        price: "100€ - 150€",
        place_type: "flat",
        logo: ""
    }
]

places_parameters.map do |place|
    Place.create!(place)
end

puts "Places created!"
puts "----------"