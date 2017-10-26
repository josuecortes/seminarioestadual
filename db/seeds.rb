# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.nome="MASTER DO SISTEMA"
u.email="josue.cort3s@gmail.com"
u.password="fantasma"
u.password_confirmation="fantasma"
u.role = "ADMINISTRADOR"

if u.save!
	puts "Usuario Master Criado"
else
	puts "Erro ao Criar Usuario Master"
end

