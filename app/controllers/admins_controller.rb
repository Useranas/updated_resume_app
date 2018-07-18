class AdminsController < ApplicationController
	def index
	 	@user = User.last
	 	@about =About.last
	end
	def new
		
	end
end
  
