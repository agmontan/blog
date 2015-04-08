class Post < ActiveRecord::Base
	has_many :reviews


	before_save :set_likes
	

	def set_likes
		if self.like==nil
		self.like = 0
	end
	end
end
