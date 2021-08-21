admin = Role.create!(name: 'Admin')
broker = Role.create!(name: 'Broker')
buyer = Role.create!(name: 'Buyer')

User.create!([
                { first_name: 'Tom', last_name: 'Reid', email: 'tom_admin@email.com', password: '123qwe', roles: [ admin ] },
                { first_name: 'Jane', last_name: 'Doe', email: 'janedoe@email.com', password: '123qwe', roles: [ broker, buyer ] },
                { first_name: 'John', last_name: 'Doe', email: 'johndoe@email.com', password: '123qwe', roles: [ broker, buyer ] }
            ])