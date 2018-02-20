Car.destroy_all
User.destroy_all

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
].freeze

CARS_LIST.length.times do |i|
  char = Faker::HowIMetYourMother.character
  cars = [
    {
      brand: CARS_LIST[i][:brand],
      model: CARS_LIST[i][:model],
      category: CARS_LIST[i][:category],
      user: User.create(email: Faker::Internet.email,
                        password: 'azerty',
                        first_name: char.split[0],
                        last_name:  char.split[1],
                        birthdate: Faker::Date.birthday(18, 65))
    }
  ].freeze
  Car.create(cars)
end
