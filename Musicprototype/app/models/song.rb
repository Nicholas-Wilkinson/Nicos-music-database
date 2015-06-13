class Song < ActiveRecord::Base
	belongs_to :band
	def self.search(search)
		if search
			self.where("title like ?", "%#{search}%")
		else
			self.all
		end
	end
end
