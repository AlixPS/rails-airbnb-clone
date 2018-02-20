User.destroy_all
Car.destroy_all

10.times do
  char = Faker::HowIMetYourMother.character
  User.create(email: Faker::Internet.email,
              password: 'azerty',
              first_name: char.split[0],
              last_name:  char.split[1],
              birthdate: Faker::Date.birthday(18, 65))
end
