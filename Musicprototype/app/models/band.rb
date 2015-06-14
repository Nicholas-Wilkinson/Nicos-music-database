class Band < ActiveRecord::Base
	has_many :songs
	
	def self.search(search)
		if search
			self.where("title like ?", "%#{search}%")
		else
			self.all
		end
	end
	
	def Song.search(search)
		if search
			Song.where("title like ?", "%#{search}%")
		else
			self.all
		end
	end
	
	

end
