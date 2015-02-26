class Country < ActiveRecord::Base
	belongs_to :player
	has_many :resources, through: :country_resource	

	before_create :set_population, :set_flag

	private

	def set_flag
		flags = Dir[Rails.root.join('app/assets/images/flags/*.png')]
		self.flag = flags.sample
	end

	def set_population
		self.population = rand(0..100)
	end

	def assign_resource
		 resource_id.shuffle.pop(rand(3..6))
	end	
end
