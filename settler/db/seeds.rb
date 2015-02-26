# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.destroy_all
Player.destroy_all
Resource.destroy_all

flags = Dir[Rails.root.join('app/assets/images/flags/*.png')]

anya = Player.create!({
	name: 'Anya Glowa-Kollisch',
	title: 'Empress Regnant',
	email: 'anya@email.com',
	password: 'anyapassword'
	})

izabella = Player.create!({
	name: 'Izabella Stern',
	title: 'Countess',
	email: 'izabella@email.com',
	password: 'izabellapassword'
	})

robin = Player.create!({
	name: 'Robin Mesina',
	title: 'Czar',
	email: 'robin@email.com',
	password: 'robinpassword'
	})

dan = Player.create!({
	name: 'Dan Snider',
	title: 'Lord',
	email: 'dan@email.com',
	password: 'danpassword'
	})

Country.create!({
	name: "Christmas Island",
	player_id: dan.id,
	flag: flags.sample,
	motto: "We got a ton of crabs here.",
	employment: 0.88,
	tax_rate: 0.06,
	wealth: 2000000
	})

Country.create!({
	name: "Skull Island",
	player_id: robin.id,
	flag: flags.sample,
	motto: "Enter if you dare! (The island looks like a skull).",
	employment: 0.89,
	tax_rate: 0.04,
	wealth: 3000000
	})

Country.create!({
	name: "Anyastan",
	player_id: anya.id,
	flag: flags.sample,
	motto: "Welcome to Anyastan, land of splendor.",
	employment: 0.9,
	tax_rate: 0.03,
	wealth: 3500000
	})

Country.create!({
	name: "Narnia",
	player_id: izabella.id,
	flag: flags.sample,
	motto: "Always Winter but never Christmas.",
	employment: 0.88,
	tax_rate: 0.04,
	wealth: 3200000
	})

Resource.create!({
	name: "Gold",
	growth_factor: 0.1,
	exchange_rate: 10
	})

Resource.create!({
	name: "Silver",
	growth_factor: 0.1,
	exchange_rate: 0.7
	})

Resource.create!({
	name: "Coal",
	growth_factor: 0.5,
	exchange_rate: 0.5
	})

Resource.create!({
	name: "Iron",
	growth_factor: 0.25,
	exchange_rate: 0.5
	})

Resource.create!({
	name: "Copper",
	growth_factor: 0.2,
	exchange_rate: 0.4
	})

Resource.create!({
	name: "Oil",
	growth_factor: 0.5,
	exchange_rate: 0.6
	})

Resource.create!({
	name: "Sheep",
	growth_factor: 0.2,
	exchange_rate: 0.2
	})

Resource.create!({
	name: "Salt",
	growth_factor: 0.2,
	exchange_rate: 0.2
	})

Resource.create!({
	name: "Fowl",
	growth_factor: 0.3,
	exchange_rate: 0.3
	})

Resource.create!({
	name: "Beef",
	growth_factor: 0.4,
	exchange_rate: 0.3
	})

Resource.create!({
	name: "Horses",
	growth_factor: 0.2,
	exchange_rate: 0.5
	})

Resource.create!({
	name: "Incense",
	growth_factor: 0.05,
	exchange_rate: 0.55
	})

Resource.create!({
	name: "Fish",
	growth_factor: 0.3,
	exchange_rate: 0.2
	})

Resource.create!({
	name: "Stone",
	growth_factor: 0.2,
	exchange_rate: 0.4
	})



