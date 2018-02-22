Car.destroy_all
User.destroy_all

CARS_LIST = [
  {
    brand: 'Tesla',
    model: 'S',
    category: 'Citadine',
    places: 5,
    portes: 5,
    moteur: 'Electrique',
    boite: 'Auto'
  },
  {
    brand: 'Renault',
    model: 'Clio 3',
    category: 'Citadine',
    places: 4,
    portes: 3,
    moteur: 'Essence',
    boite: 'Manuel'
  },
  {
    brand: 'Citroën',
    model: 'C5',
    category: 'Monospace',
    places: 7,
    portes: 5,
    moteur: 'Diesel',
    boite: 'Manuel'
  },
  {
    brand: 'Jeep',
    model: 'Wrangler',
    category: 'SUV',
    places: 4,
    portes: 5,
    moteur: 'Essence',
    boite: 'Manuel'
  },
  {
    brand: 'Mercedes',
    model: 'Sprinter',
    category: 'Utilitaire',
    places: 3,
    portes: 4,
    moteur: 'Essence',
    boite: 'Auto'
  },
  {
    brand: 'Citroën',
    model: 'Kangoo',
    category: 'Utilitaire',
    places: 5,
    portes: 5,
    moteur: 'Diesel',
    boite: 'Manuel'
  },
  {
    brand: 'Peugeot',
    model: '308',
    category: 'Compacte',
    places: 4,
    portes: 3,
    moteur: 'Diesel',
    boite: 'Auto'
  },
  {
    brand: 'Mercedes',
    model: 'AMG',
    category: 'Compacte',
    places: 2,
    portes: 3,
    moteur: 'Essence',
    boite: 'Manuel'
  },
  {
    brand: 'BMW',
    model: 'i3',
    category: 'Compacte',
    places: 5,
    portes: 5,
    moteur: 'Electrique',
    boite: 'Auto'
  },
  {
    brand: 'Fiat',
    model: 'Multipla',
    category: 'Utilitaire',
    places: 7,
    portes: 7,
    moteur: 'Essence',
    boite: 'Manuel'
  }
].freeze

CARS_LIST.length.times do |i|
  char = Faker::HowIMetYourMother.character
  cars = [
    {
      brand: CARS_LIST[i][:brand],
      model: CARS_LIST[i][:model],
      category: CARS_LIST[i][:category],
      places: CARS_LIST[i][:places],
      portes: CARS_LIST[i][:portes],
      moteur: CARS_LIST[i][:moteur],
      boite: CARS_LIST[i][:boite],
      user: User.create(email: Faker::Internet.email,
                        password: 'azerty',
                        first_name: char.split[0],
                        last_name:  char.split[1],
                        birthdate: Faker::Date.birthday(18, 65),
                        avatar_photo: File.open('app/assets/images/profil.jpg'))
    }
  ].freeze
  Car.create(cars)
end
