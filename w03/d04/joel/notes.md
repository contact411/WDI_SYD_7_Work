#command for creating a new Rails project
rails new shelter_manager

#most data will be created inside of the Apps folder

#for creating controllers... the index option on the end creates the index page
rails g controller Animals index

#for creating models  (creates a table in the database)
rails g model Animal name:string species:string breed:string arrival_time:datetime departure_time:datetime gender:string age:integer 

#rake the db to apply the changes that were made while creating the model table
rake db:migrate

#starts an IRB session that has the classes preloaded
rails console

#creates a new column in the data
rails g migration AddSexToAnimals sex:string


#using the rails console
sparky = Animal.new
sparky.name = "Spraky the Dog"
sparky.species = "Dog"
sparky.breed = "Mastif"
#etc.. etc.. etc..
sparky.save

#create saves and creates in one go
fido = Animals.create({
  name: "Fido",
  age: 3,
  species: "Dog",
  breed: "Wolf",
  arrival_time: 2.days.ago,
  departure
  }
  