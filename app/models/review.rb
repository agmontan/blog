class Review < ActiveRecord::Base
	belongs_to :post



	before_create :set_likes
	

	def set_likes
		if self.like==nil
		self.like = 0
	end
	end
end
