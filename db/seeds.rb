User.destroy_all
Car.destroy_all

CARS_LIST = [
  {
    brand: 'Tesla',
    model: 'S',
    category: 'Citadine'
  },
  {
    brand: 'Renault',
    model: 'Clio 3',
    category: 'Citadine'
  },
  {
    brand: 'Citroën',
    model: 'C5',
    category: 'Monospace'
  },
  {
    brand: 'Jeep',
    model: 'Wrangler',
    category: 'SUV'
  },
  {
    brand: 'Mercedes',
    model: 'Sprinter',
    category: 'Utilitaire'
  },
  {
    brand: 'Citroën',
    model: 'Kangoo',
    category: 'Utilitaire'
  },
  {
    brand: 'Peugeot',
    model: '308',
    category: 'Compacte'
  },
  {
    brand: 'Mercedes',
    model: 'AMG',
    category: 'Compacte'
  },
  {
    brand: 'BMW',
    model: 'i3',
    category: 'Compacte'
  },
  {
    brand: 'Fiat',
    model: 'Multipla',
    category: 'Utilitaire'
  }
]

CARS.length.times do |i|
  char = Faker::HowIMetYourMother.character
  CARS = [
    {
      brand: ,
      model: ,
      category: ,
      user: User.create(email: Faker::Internet.email,
                  password: 'azerty',
                  first_name: char.split[0],
                  last_name:  char.split[1],
                  birthdate: Faker::Date.birthday(18, 65))
    }
  ]
end
