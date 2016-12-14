
cars = Car.create([
  
  {tag: '5622JSJ', frame: 'VF1BZN53829481733', brand: 'Renault', model: 'Nuevo Clio', finishing: 'Zen 1.5dci 90cv', 
    numb_places: '5', color: 'Rojo Intenso', registration_date: '02-09-2016', discharge_date: '02-09-2016', leaving_date: '02-04-2017', kms: '12'},
  {tag: '5678JKL', frame: 'VF1JZN50456279932', brand: 'Renault', model: 'Nuevo Megane', finishing: 'Bose 1.6dci 130cv', 
    numb_places: '5', color: 'Azul Majorelle', registration_date: '21-11-2016', discharge_date: '21-11-2016', leaving_date: '21-06-2017', kms: '5'},
  {tag: '6492JSW', frame: 'VF1BZN50462489201', brand: 'Renault', model: 'Nuevo Megane Sport Tourer', finishing: 'Zen 1.6dci 130cv', 
    numb_places: '5', color: 'Azul Berlin', registration_date: '27-09-2016', discharge_date: '27-09-2016', leaving_date: '27-04-2017', kms: '14'},
  {tag: '3456JKL', frame: 'VF1JZN50456938254', brand: 'Renault', model: 'Kadjar', finishing: 'Intens 1.5dci 110cv', 
    numb_places: '5', color: 'Rojo Deseo', registration_date: '16-11-2016', discharge_date: '16-11-2016', leaving_date: '16-06-2017', kms: '11'},
  {tag: '4622JLL', frame: 'VF1JZN50456773890', brand: 'Renault', model: 'Kadjar', finishing: 'Zen 1.5dci 110cv Auto', 
    numb_places: '5', color: 'Marron Moka', registration_date: '10-12-2016', discharge_date: '10-12-2016', leaving_date: '10-07-2017', kms: '17'},
  {tag: '9012JKV', frame: 'VF1JZN50452666938', brand: 'Renault', model: 'Gran Scenic', finishing: 'Zen 1.6dci 130cv', 
    numb_places: '7', color: 'Rojo Duna', registration_date: '02-12-2016', discharge_date: '02-12-2016', leaving_date: '02-07-2016', kms: '9'},
  {tag: '7890JKL', frame: 'VF1JZN50456938720', brand: 'Renault', model: 'Talisman', finishing: 'Initial EDC dci 160cv', 
    numb_places: '5', color: 'Blanco Nacarado', registration_date: '29-11-2016', discharge_date: '29-11-2016', leaving_date: '29-06-2017', kms: '6'},
  {tag: '8827JSY', frame: 'VF1BZN59247193724', brand: 'Renault', model: 'Talisman Sport Tourer', finishing: 'Zen 1.6dci 130cv', 
    numb_places: '5', color: 'Gris Casiopea', registration_date: '27-09-2016', discharge_date: '27-09-2016', leaving_date: '27-04-2017', kms: '10'},
  {tag: '1234JKL', frame: 'VF1JZN50456938765', brand: 'Renault', model: 'Nuevo Espace', finishing: 'Initial 1.6dci 160cv', 
    numb_places: '7', color: 'Negro Amatista', registration_date: '04-11-2016', discharge_date: '04-11-2016', leaving_date: '04-06-2017', kms: '7'}
  
])  

users = User.create([

  {first_name: 'Antonio', last_name: 'Fernandez', id_card: '45928524L', mobile: '612345678', email: 'a.fernandez@tesla.com', company: 'Tesla'},
  {first_name: 'Juan', last_name: 'Garcia', id_card: '56789012M', mobile: '645678912', email: 'jgarcia@iberdrola.es', company: 'Iberdrola'},
  {first_name: 'Cristina', last_name: 'Martin', id_card: '24578932C', mobile: '623456789', email: 'cm@bancosantander.es', company: 'Banco Santander'},
  {first_name: 'Fernando', last_name: 'Muñoz', id_card: '45782011B', mobile: '676927727', email: 'fernando.munoz@northgate-spain.es', company: 'Northgate Spain'},
  {first_name: 'Alberto', last_name: 'Galvez', id_card: '36139098A', mobile: '666936482', email: 'albert.galvez@correos.es', company: 'Correos'},
  {first_name: 'Nuria', last_name: 'Perez', id_card: '45932860Z', mobile: '626112860', email: 'nuria_perez@arval.es', company: 'Arval'},
  {first_name: 'Francois', last_name: 'Dupond', id_card: 'Y2789012V', mobile: '696226830', email: 'f.dupond@axa-seguros.es', company: 'Axa Seguros'},
  {first_name: 'David', last_name: 'Hernandez', id_card: '58226593P', mobile: '699660244', email: 'david.hernandez@guardiareal.es', company: 'Guardia Real'},
  {first_name: 'Martin', last_name: 'Lorenzo', id_card: '50232769L', mobile: '626112860', email: 'martin.lorenzo@vodafone.es', company: 'Vodafone'},

])

Admin.create([
  
  {email: 'herve@herbrich.com', password: '123456789'}

])