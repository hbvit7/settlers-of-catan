class Country < ActiveRecord::Base
	belongs_to :player
	has_many :resources, through: :country_resource	

	before_create :set_population, :set_flag
	before_create :set_wealth
	before_create :assign_resource


	private

	def set_flag
		flags = Dir[Rails.root.join('app/assets/images/flags/*.png')]
		self.flag = flags.sample
	end

	def set_population
		self.population = rand(0..100)
	end

	def assign_resource
		resources = Resource.all
		resources.shuffle.pop(rand(3..6))
		resources.each do |resource|
			CountryResource.create(country_id: self.id, resource_id: resource.id)
		end
	end	

	def set_wealth
		self.wealth = rand(2000000..6000000)
	end
end
