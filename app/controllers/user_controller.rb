class UserController < ApplicationController

  def signup
  end

  def signup_complete

	u = User.new
	u.username = params[:username]
	if params[:password] == params[:retype_password]
		u.password=params[:password]
		if u.save
			flash[:alert] = "success"
			redirect_to "scrum/index.html"
		else
			flash[:alert] = u.errors.values.flatten.join(' ')
			redirect_to :back
		end
	else
		flash[:alert] = "doesnt match"
		redirect_to :back
	end

  end

end
