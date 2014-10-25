class User < ActiveRecord::Base

	has_many :posts
	validates :username, :presence => { :message => "its blank dude" }
	validates :username, :uniqueness => { :message => "Already exist. " }
	validates :password , :length => { :minimum =>7 , :too_short =>"Too short." }


end
