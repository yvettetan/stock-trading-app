# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
['Admin', 'Broker', 'Buyer'].each do |role|
    Role.find_or_create_by({name: role})
end
User.create!([
            { first_name: 'Tom', last_name: 'Reid', email: 'tom_admin@email.com', password: '123qwe', role_id: 1},
            { first_name: 'Jane', last_name: 'Doe', email: 'janedoe_broker@email.com', password: '123qwe', role_id: 2},
            { first_name: 'John', last_name: 'Doe', email: 'johndoe_buyer@email.com', password: '123qwe', role_id: 3}
            ])
User.first.roles << Role.find_by_name(:Admin)
User.second.roles << Role.find_by_name(:Broker)
User.third.roles << Role.find_by_name(:Buyer)