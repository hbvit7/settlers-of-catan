class Country < ActiveRecord::Base
	belongs_to :player
	has_many :resources, through: :country_resource	

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

	def assign_resource
		 resource_id.shuffle.pop(rand(3..6))
	end	
end
