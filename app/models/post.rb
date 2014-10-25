class Post < ActiveRecord::Base

	belongs_to :user
	validates :category, :presence => { :message =>"category" }
	validates :content, :presence => { :message => "write some" }

end
