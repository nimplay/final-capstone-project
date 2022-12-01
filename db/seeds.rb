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
