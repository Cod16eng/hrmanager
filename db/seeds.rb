# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.delete.all
Department.delete.all
User.delete.all
Company.create!(name: "Test")
Department.create!(name: "Test", company_id: 1)
User.create!(first_name: "Codrin", last_name: "Popescu", email: "codrin@ascheri.co.uk", 
			 password: "Codrin31", password_confirmation: "Codrin31", admin: true, 
			 company_id: 1, department_id: 1)