class User < ApplicationRecord

	# relationships
	has_and_belongs_to_many :events
	has_and_belongs_to_many :clubs
	belongs_to :school
	has_secure_password

	# namescopes

	scope :sorted, lambda{order('username ASC')}

	# validations

	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
	validates :email, :presence=>true,
					:format => {:with=>EMAIL_REGEX},
					:uniqueness=>true

	validates :username, :length=>{:within=>8..26},
						:presence=>true,
						:confirmation=>true,
						:uniqueness=>true

	validates :password, :length=>{:within=>8..12},
						:presence=>true,
						:confirmation=>true

	validates :first_name, :presence=>true,
							:length=>{:maximum=>25}

	validates :last_name, :presence=>true,
							:length=>{:maximum=>30}

	validates :student_number, :presence=>true,
							:length=>{:is=>10},
							:uniqueness=>true
end
