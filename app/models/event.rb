class Event < ApplicationRecord

	#need to generate join table for events_users_join
	has_and_belongs_to_many :users
	belongs_to :school
	belongs_to :club
end
