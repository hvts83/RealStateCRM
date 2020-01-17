# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





e1 = Employee.find_or_create_by(name: "James", email: "james@james.com", phone: "6192839843", employee_number: 1234)
e2 = Employee.find_or_create_by(name: "Tiffany", email: "TheyCallMeRDawg@james.com", phone: "123456789", employee_number: 1234)
e3 = Employee.find_or_create_by(name: "Ritricia", email: "ritricia@james.com", phone: "8888888888", employee_number: 123)

c1 = Client.find_or_create_by(name: "John", phone: "3333333333", email: "tinypineapples@aol.com")
c2 = Client.find_or_create_by(name: "Rebecca", phone: "1111111111", email: "hero@aol.com")
c3 = Client.find_or_create_by(name: "Roscoe", phone: "2222222222", email: "bobatit@aol.com")
c4 = Client.find_or_create_by(name: "Laina", phone: "4444444444", email: "pragmatic@aol.com")
c5 = Client.find_or_create_by(name: "Jeremy", phone: "5555555555", email: "Tina.Turner@aol.com")
c6 = Client.find_or_create_by(name: "heather", phone: "6666666666", email: "PineTineapples@aol.com")

Clientappointment.find_or_create_by(description: "Meeting", time: "3333333333", date: "date", location: "location", client_id: c1.id, employee_id: e1.id)
Clientappointment.find_or_create_by(description: "Meeting", time: "1111111111", date: "date", location: "location two", client_id: c2.id, employee_id: e1.id)
Clientappointment.find_or_create_by(description: "Meeting", time: "2222222222", date: "date", location: "location three", client_id: c3.id, employee_id: e2.id)
Clientappointment.find_or_create_by(description: "Meeting", time: "4444444444", date: "date", location: "location four", client_id: c4.id , employee_id: e2.id)
Clientappointment.find_or_create_by(description: "Meeting", time: "6666666666", date: "date", location: "location five", client_id: c5.id, employee_id: e3.id)


Product.find_or_create_by(name: "55 W 55th st Apt 2", location: "55 W 55th st Apt 2" , product_type: "Rental" , status: "On Market" , neighboorhood: "Columbus Circle", client_id: c1.id )
Product.find_or_create_by(name: "404 E 122nd st Apt 4" , location: "404 E 122nd st Apt 4" , product_type: "Rental", status: "Application Pending", neighboorhood: "Upper East Side" , client_id: c2.id)
Product.find_or_create_by(name: "123 Madison ave", location: "123 Madison ave", product_type: "Condo", status: "On Market", neighboorhood: "Greenwich Village" , client_id: c3.id)
Product.find_or_create_by(name: "727 Madison ave", location: "727 Madison ave", product_type: "Rental" , status: "Application pending", neighboorhood: "Upper East Side" , client_id: c4.id)
Product.find_or_create_by(name: "1200 Broadway", location: "1200 Broadway", product_type: "Building" , status: "Off Market", neighboorhood: "Upper West Side" , client_id: c5.id)

Customer.find_or_create_by(name: "Liam", phone: "3333333333", email: "pomme@aol.com", budget:"10000")
Customer.find_or_create_by(name: "Danny", phone: "1111111111", email: "chaussure@aol.com", budget:"15000")
Customer.find_or_create_by(name: "Felix", phone: "2222222222", email: "petit@aol.com", budget:"16000")
Customer.find_or_create_by(name: "Adam", phone: "4444444444", email: "lach@aol.com", budget:"17000")
Customer.find_or_create_by(name: "Emily", phone: "5555555555", email: "ecran@aol.com", budget:"80000")
Customer.find_or_create_by(name: "Dora", phone: "6666666666", email: "lunette@aol.com", budget:"90000")



