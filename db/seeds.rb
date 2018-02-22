Car.destroy_all
User.destroy_all

CARS_LIST = [
  {
    brand: 'Tesla',
    model: 'S',
    category: 'Citadine',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Renault',
    model: 'Clio 3',
    category: 'Citadine',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Citroën',
    model: 'C5',
    category: 'Monospace',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Jeep',
    model: 'Wrangler',
    category: 'SUV',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Mercedes',
    model: 'Sprinter',
    category: 'Utilitaire',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Citroën',
    model: 'Kangoo',
    category: 'Utilitaire',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Peugeot',
    model: '308',
    category: 'Compacte',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Mercedes',
    model: 'AMG',
    category: 'Compacte',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'BMW',
    model: 'i3',
    category: 'Compacte',
    places: ,
    portes: ,
    moteur: ,
    boite:
  },
  {
    brand: 'Fiat',
    model: 'Multipla',
    category: 'Utilitaire',
    places: ,
    portes: ,
    moteur: ,
    boite:
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
                        avatar_photo: File.open("/assets/images/profil.jpg"))
    }
  ].freeze
  Car.create(cars)
end
