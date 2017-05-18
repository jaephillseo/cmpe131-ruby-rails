class Article < ActiveRecord::Base
	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories
	validates :title, presence: true, length: {minimum: 3, maximum: 50}
	validates :description, presence: true, length: { minimum: 10, maximum: 300}
	validates :user_id, presence: true

	# def self.search(search)
	# 	if search
	# 		where('name LIKE ?', "%#{search}%").order('id DESC')
	# 	else
	# 		order('id DESC')
	# 	end
	# end
end