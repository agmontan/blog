class Post < ActiveRecord::Base
	has_many :reviews
	belongs_to :users


	before_save :set_likes
	

	def set_likes
		if self.like==nil
		self.like = 0
	end
	 self.user_id=1
	end
end
