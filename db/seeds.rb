puts "Destruction des 'reviews'..."
Review.destroy_all

puts "Destruction des 'rentals'..."
Rental.destroy_all

puts "Destruction des 'cars'..."
Car.destroy_all

puts "Destruction des 'users'..."
User.destroy_all

puts "\nDestruction des anciennes images générées..."
print `rm -r public/uploads/tmp/*`

puts "\nInitialisation des constantes"
CARS_LIST = [
  {
    brand:    'Tesla',
    model:    'S',
    category: 'Citadine',
    places:   5,
    portes:   5,
    moteur:   'Electrique',
    boite:    'Auto'
  },
  {
    brand:    'Renault',
    model:    'Clio 3',
    category: 'Citadine',
    places:   4,
    portes:   3,
    moteur:   'Essence',
    boite:    'Manuel'
  },
  {
    brand:    'Citroën',
    model:    'C5',
    category: 'Monospace',
    places:   7,
    portes:   5,
    moteur:   'Diesel',
    boite:    'Manuel'
  },
  {
    brand:    'Jeep',
    model:    'Wrangler',
    category: 'SUV',
    places:   4,
    portes:   5,
    moteur:   'Essence',
    boite:    'Manuel'
  },
  {
    brand:    'Mercedes',
    model:    'Sprinter',
    category: 'Utilitaire',
    places:   3,
    portes:   4,
    moteur:   'Essence',
    boite:    'Auto'
  },
  {
    brand:    'Citroën',
    model:    'Kangoo',
    category: 'Utilitaire',
    places:   5,
    portes:   5,
    moteur:   'Diesel',
    boite:    'Manuel'
  },
  {
    brand:    'Peugeot',
    model:    '308',
    category: 'Compacte',
    places:   4,
    portes:   3,
    moteur:   'Diesel',
    boite:    'Auto'
  },
  {
    brand:    'Mercedes',
    model:    'AMG',
    category: 'Compacte',
    places:   2,
    portes:   3,
    moteur:   'Essence',
    boite:    'Manuel'
  },
  {
    brand:    'BMW',
    model:    'i3',
    category: 'Compacte',
    places:   5,
    portes:   5,
    moteur:   'Electrique',
    boite:    'Auto'
  },
  {
    brand:    'Fiat',
    model:    'Multipla',
    category: 'Utilitaire',
    places:   7,
    portes:   7,
    moteur:   'Essence',
    boite:    'Manuel'
  }
].freeze

ADDRESSES = [
  {
    adress: 'Cormes',
    city:   'Mamers'
  },
  {
    adress: 'Les Ricoux',
    city:   'Saint-Rirand'
  },
  {
    adress: 'Calès',
    city:   'Castels et Bézenac'
  },
  {
    adress: 'Esparron',
    city:   'Gap'
  },
  {
    adress: 'Marions',
    city:   'Langon'
  },
  {
    adress: 'Saint-Hélier',
    city:   'Montbard'
  },
  {
    adress: 'Quiry-le-Sec',
    city:   'Montdidier'
  },
  {
    adress: 'Pexonne',
    city:   'Lunéville'
  },
  {
    adress: 'Vignes d\'Orval',
    city:   'Goussainville'
  },
  {
    adress: 'Auxy',
    city:   'Autun'
  }
].freeze

def time_rand(from = 0.0, to = Time.now)
  Time.at(from + rand * (to.to_f - from.to_f))
end

puts "\nCréation des 'users'..."
ADDRESSES.length.times do |i|
  char       = Faker::HowIMetYourMother.character
  first_name = char.split.first
  last_name  = char.split.last

  User.create(email:        "#{first_name}@smappy.com",
              password:     'azerty',
              first_name:   first_name,
              last_name:    last_name,
              birthdate:    Faker::Date.birthday(18, 65),
              avatar_photo: File.open('app/assets/images/profil.jpg'),
              adress:       ADDRESSES[i][:adress],
              city:         ADDRESSES[i][:city])
  sleep 1
end

puts "Création des 'cars'..."
CARS_LIST.length.times do |i|
  Car.create(
    brand:    CARS_LIST[i][:brand],
    model:    CARS_LIST[i][:model],
    category: CARS_LIST[i][:category],
    places:   CARS_LIST[i][:places],
    portes:   CARS_LIST[i][:portes],
    moteur:   CARS_LIST[i][:moteur],
    boite:    CARS_LIST[i][:boite],
    user:     User.find(rand((User.first.id)..(User.last.id)))
  )
end

puts "Création des 'rentals'..."
30.times do
  checkin  = time_rand(Time.now, Time.local(2018, 3, 3))
  checkout = time_rand(checkin, Time.local(2018, 7, 1))
  Rental.create(
    checkin:  checkin,
    checkout: checkout,
    car:      Car.find(rand((Car.first.id)..(Car.last.id))),
    user:     User.find(rand((User.first.id)..(User.last.id)))
  )
end

puts "Création des 'reviews'..."
50.times do
  Review.create(
    description: Faker::Lorem.paragraph,
    rating:      rand(1..5),
    rental:      Rental.find(rand((Rental.first.id)..(Rental.last.id)))
  )
end
