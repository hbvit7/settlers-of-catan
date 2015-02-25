class Country < ActiveRecord::Base
	belongs_to :player

	after_create :set_population, :set_flag

	private

	def set_flag
		flags = Dir[Rails.root.join('app/assets/images/flags/*.png')]
		self.flag = flags.sample
		self.save!
	end

	def set_population
		self.population = rand(0..100)
		self.save!
	end
	
end
