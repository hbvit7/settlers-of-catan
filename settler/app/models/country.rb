class Country < ActiveRecord::Base
	belongs_to :player

	after_create do
		self.population = rand(0..100)
	end
	
end
