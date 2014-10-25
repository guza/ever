class ScrumController < ApplicationController

before_action :login_check
skip_before_action  :login_check, :only => [:index]

	def index
		@posts = Post.all
	end


	def todo
	end


	def todo_complete
		p = Post.new
    		p.category = params[:category]
    		p.content = params[:content]
    		if p.save
     	 		redirect_to "/scrum/index.html"
   	 	else
     	 		flash[:alert] = p.errors[:content][0]
     	 	redirect_to :back
    		end	
	end

end
