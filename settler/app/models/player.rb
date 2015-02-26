class Player < ActiveRecord::Base
	has_secure_password

	validates :email, :password_digest, presence: true
	validates :email, uniqueness: true
	validates :password, length: {minimum: 6, allow_nil: true}

  has_one :country

end
