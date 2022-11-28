puts 'Creating user'
userslist = User.create([
                            { name: 'lola',
                              email:'lola@email.com',
                              role: 'admin',
                              password: '123456',
                              password_confirmation: '123456'
                            },
                            { name: 'pepe',
                              email:'pepe@email.com',
                              role: 'user',
                              password: '123456',
                              password_confirmation: '123456',
                            },
                          ])
puts 'Users created'
puts 'Creating Tests'
testlist = Test.create([
                            { name: 'Hello React Rails' },
                            { name: 'Hi React Rails' },
                            { name: 'Hola React Rails' },
                            { name: 'Salut React Rails' },
                            { name: 'Bonjour React Rails' }
                          ])
puts 'Tests created'

