class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy

	has_many :listings
	has_many :tags, through: :listings
	
	validates :title, presence: true, length: { minimum: 5 }
end
