class School < ApplicationRecord
	# relationships

	has_many :clubs
	has_many :users
end
