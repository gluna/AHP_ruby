# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

JulgamentoCriterio.delete_all
Criterio.delete_all
Alternativa.delete_all
Julgamento.delete_all
User.delete_all

User.create(:nome => 'Administrador', :email => 'admin@admin.com', :admin_role => 't', :user_role => 't', :password => '123456')
# Criterio.create(:nome => 'Estilo', :projeto_id => Projeto.first.id)
# Criterio.create(:nome => 'Confiabilidade', :projeto_id => Projeto.first.id)
# Criterio.create(:nome => 'Consumo', :projeto_id => Projeto.first.id)
#
# Alternativa.create(:nome => 'Civic', :projeto_id => Projeto.first.id)
# Alternativa.create(:nome => 'Saturn', :projeto_id => Projeto.first.id)
# Alternativa.create(:nome => 'Escort', :projeto_id => Projeto.first.id)
# Alternativa.create(:nome => 'Miata', :projeto_id => Projeto.first.id)
