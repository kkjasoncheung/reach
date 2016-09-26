class Category < ApplicationRecord
	# relationships
	has_and_belongs_to_many :clubs

	# namescopes

	scope :alphabetical, lambda{order('name ASC')}
end
