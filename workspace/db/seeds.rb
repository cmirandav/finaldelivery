# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tipoplato.create(destipplato:"Entrada")
Tipoplato.create(destipplato:"Segundo")
Tipoplato.create(destipplato:"Bebida")

Categorium.create(nomcateg:"Criollo")
Categorium.create(nomcateg:"Marino")
Categorium.create(nomcateg:"Chifa")
Categorium.create(nomcateg:"Vegetariano")
Categorium.create(nomcateg:"Pastas")

Ciudad.create(nomciudad:"Cercado")
Ciudad.create(nomciudad:"Ancon")
Ciudad.create(nomciudad:"Ate")
Ciudad.create(nomciudad:"Barranco")
Ciudad.create(nomciudad:"Breña")
Ciudad.create(nomciudad:"Carabayllo")
Ciudad.create(nomciudad:"Comas")
Ciudad.create(nomciudad:"Chaclacayo")
Ciudad.create(nomciudad:"Chorrillos")
Ciudad.create(nomciudad:"El Agustino")
Ciudad.create(nomciudad:"Jesus Maria")
Ciudad.create(nomciudad:"La Molina")
Ciudad.create(nomciudad:"La Victoria") 
Ciudad.create(nomciudad:"Lince")
Ciudad.create(nomciudad:"Lurigancho")
Ciudad.create(nomciudad:"Lurin")
Ciudad.create(nomciudad:"Magdalena")
Ciudad.create(nomciudad:"Miraflores")
Ciudad.create(nomciudad:"Pachacamac")
Ciudad.create(nomciudad:"Pucusana")
Ciudad.create(nomciudad:"Pueblo Libre")
Ciudad.create(nomciudad:"Puente Piedra")

Horaentrega.create(deshora:"12:00 pm")
Horaentrega.create(deshora:"12:30 pm")
Horaentrega.create(deshora:"01:00 pm")

Restaurant.create(nombre:"Norkys Cercado",direcc:"Wilson 1215",resena:"Primer restaurant",correo:"norkyscentro@gmail.com",user_id:2)
Restaurant.create(nombre:"Norkys Ate",direcc:"Ate 515",resena:"El nuevo y mejor",correo:"norkysate@gmail.com",user_id:2)
Restaurant.create(nombre:"Gaston Cercado",direcc:"28 de julio 115",resena:"Antiguo restaurant",correo:"gastoncentro@gmail.com",user_id:3)
Restaurant.create(nombre:"Gaston Miraflores",direcc:"Shell525",resena:"La nueva adquisicion",correo:"gastonmiraflores@gmail.com",user_id:3)

Plato.create(fecha:"12-06-2015",nomplato:"Ensalada",cantidad:10,tipoplato_id:1,restaurants_id:1)
Plato.create(fecha:"12-06-2015",nomplato:"Brochetas de Pollo",cantidad:10,tipoplato_id:2,restaurants_id:1)
Plato.create(fecha:"12-06-2015",nomplato:"Chicha Morada",cantidad:10,tipoplato_id:3,restaurants_id:1)

Plato.create(fecha:"12-06-2015",nomplato:"Ensalada fresca",cantidad:10,tipoplato_id:1,restaurants_id:2)
Plato.create(fecha:"12-06-2015",nomplato:"Cuarto de Pollo con Arroz",cantidad:10,tipoplato_id:2,restaurants_id:2)
Plato.create(fecha:"12-06-2015",nomplato:"Gaseosa",cantidad:10,tipoplato_id:3,restaurants_id:2)

Plato.create(fecha:"12-06-2015",nomplato:"Papa a la Huancaina",cantidad:10,tipoplato_id:1,restaurants_id:3)
Plato.create(fecha:"12-06-2015",nomplato:"Arroz con Pollo",cantidad:10,tipoplato_id:2,restaurants_id:3)
Plato.create(fecha:"12-06-2015",nomplato:"Refresco Carambola",cantidad:10,tipoplato_id:3,restaurants_id:3)

Plato.create(fecha:"12-06-2015",nomplato:"Palta rellena",cantidad:10,tipoplato_id:1,restaurants_id:4)
Plato.create(fecha:"12-06-2015",nomplato:"Bisteck a lo Pobre",cantidad:10,tipoplato_id:2,restaurants_id:4)
Plato.create(fecha:"12-06-2015",nomplato:"Refresco Aguaymanto",cantidad:10,tipoplato_id:3,restaurants_id:4)

