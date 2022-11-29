puts 'Creating user'
  userslist = User.create([
                            { name: 'lola',
                              user_name: 'lolita',
                              email:'lola@email.com',
                              role: 'admin',
                              password: '123456',
                              password_confirmation: '123456',
                              date_of_birth: '2020-01-01',
                            },
                            { name: 'pepe',
                              user_name: 'pepito',
                              email:'pepe@email.com',
                              role: 'user',
                              password: '123456',
                              password_confirmation: '123456',
                              date_of_birth: '1999-02-01',
                            },
                         ])
puts 'Users created'

puts 'Creating Car'
carslist = Car.create([
  { car_name: 'Fiat 500',
    image: 'https://www.fiat.com/content/dam/fiat/com/my23/500-500c/colorizer/500/green/500-figurini-colorizer-Rugiada-Green-desktop-680x430.png',
    brand: 'Fiat',
    color: 'Green',
    year: '2019',
    price: 100,
    booked: false,
  },
])
puts 'Cars created'
