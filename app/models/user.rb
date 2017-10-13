class User < ApplicationRecord
	validates :firstname, :lastname, :email, :password, presence: true
	validates :email, uniqueness: true
	validates :email, uniqueness: {case_sensitive: false}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates :password, length: {in: 6..20}
	validates_format_of :phone,
	length: {in: 11},
	with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
end
