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
        place_type: "castle"
    },
    {
        title: "Église d'Arcangues",
        information: "Lorem ipsum",
        subtitle: "Lieu de la cérémonie religieuse",
        address: "Église Saint Jean-Baptiste Arcangues",
        photo: "arcangues.png",
        phone_number: "+33.5.XX.XX.XX.XX",
        website_url: "",
        price: "",
        place_type: "church"
    }
]

places_parameters.map do |place|
    Place.create!(place)
end

puts "Places created!"
puts "----------"