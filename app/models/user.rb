class User < ActiveRecord::Base
	has_many :articles
	#convert email to lowercase using downcase before saving to the database
	before_save {self.email = email.downcase}
	#minimum 3 characters
	validates :username, presence: true, 
			  uniqueness: { case_sensitive: false }, #ignore case sensitivity
			  length: { minimum: 3, maximum: 25 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	validates :email, presence: true, length: {maximum: 105},
	uniqueness: {case_sensitive: false},
	format: { with: VALID_EMAIL_REGEX}
end