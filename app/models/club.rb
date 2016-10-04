class Club < ApplicationRecord

	# relationships

	has_and_belongs_to_many :users
	belongs_to :school
	has_and_belongs_to_many :categories

	scope :sorted, lambda{order('clubname DESC')}

	# validations
	validates :clubname, :presence=>true,
						:length=>{:within=>4..20},
						:uniqueness=>true

	validates :description, :presence=>true

	validates :president, :presence=>true

	# Adding paperclip gem functionality

	has_attached_file :display_picture, styles: {large: "400x400>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :display_picture, content_type: /\Aimage\/.*\z/

end
