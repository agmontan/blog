class User < ActiveRecord::Base
	has_many, :through :posts
end
