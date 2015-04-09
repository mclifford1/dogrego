# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dog.delete_all
# . . .
Dog.create!(name: 'Rover',
breed: 'Golden Retriever',
dob: DateTime.strptime("09/14/2009", "%m/%d/%Y"))

Dog.create!(name: 'Fido',
breed: 'Terrier',
dob: DateTime.strptime("02/23/2011", "%m/%d/%Y"))

User.delete_all

# Create an admin user
User.create!(username: 'admin', password: 'admin', name: 'admin', address: 'somewhere', email: 'mark.clifford.mail@gmail.com', superuser: true )

Regoptions.delete_all
Regoptions.create!(months: 3, price: 25.00)
Regoptions.create!(months: 6, price: 65.00)
Regoptions.create!(months: 12, price: 85.00)
