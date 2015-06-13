class Article < ActiveRecord::Base
	has_many :comments
	validates :title, presence: true,
					  length:  { minimum: 5 }
	def self.search(search)
		if search
			self.where("title like ?", "%#{search}%")
		else
			self.all
		end
	end
end
