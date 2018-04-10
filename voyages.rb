

voyages = [

    { ville: "Paris", duree: 10 },

    { ville: "New York", duree: 5 },

    { ville: "Berlin", duree: 2 },

    { ville: "Montréal", duree: 15 }

]

voyages.each do |ville, duree|
  puts "Voyage à #{ville} de #{duree} jours"
end
