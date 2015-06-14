class Song < ActiveRecord::Base
	belongs_to :band
	def self.searchband(searchband)
		if searchband
			self.where("title like ?", "%#{searchband}%")
		else
			self.all
		end
	end
end
