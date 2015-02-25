# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.destroy_all
Player.destroy_all

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

