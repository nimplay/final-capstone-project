#puts 'Creating user'
#userslist = User.create([
#                            { name: 'lola',
#                              email:'lola@email.com',
#                              role: 'admin',
#                              password: '123456',
#                              password_confirmation: '123456'
#                            },
#                            { name: 'pepe',
#                              email:'pepe@email.com',
#                              role: 'user',
#                              password: '123456',
#                              password_confirmation: '123456',
#                            },
#                         ])
# puts 'Users created'

puts 'Creating Car'
carslist = Car.create([
  { car_name: 'Fiat 500',
    image: 'https://www.fiat.com/content/dam/fiat/com/my23/500-500c/colorizer/500/green/500-figurini-colorizer-Rugiada-Green-desktop-680x430.png',
    driver_name:'Available',
    price: 100,
    booked: false,
  },
  { car_name: 'Toyota RAV4 Crossover SUV 2022',
    image: 'https://www.toyota.com/imgix/content/dam/toyota/jellies/max/2022/rav4/hybridse/4524/8w2/2.png?fm=webp&bg=white&w=768&h=328&q=90',
    driver_name:'Lola',
    price: 300,
    booked: true,
  },
])
puts 'Cars created'
