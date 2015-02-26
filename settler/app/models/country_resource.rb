class CountryResource < ActiveRecord::Base
	has_many :resources
	has_many :countries
end
