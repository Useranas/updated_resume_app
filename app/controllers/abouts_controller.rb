class AboutsController < ApplicationController
	def new
   @about = About.new
	end
	def create
		@about = About.new(permitted_params_about)
		if @about.save
				redirect_to admins_path
			else
				render new_about_path
		end
	end
  def show
 	
  end
  
  def edit
  	@about =About.last
  end

  def update
  	@about =About.last
    @about.update_attributes(first_name: params[:about][:first_name], last_name: params[:about][:last_name], description: params[:about][:description], email: params[:about][:email],  address: params[:about][:address])
  	if @about.save
  		redirect_to admins_path
  	else
  		render new_about_path
  	end	
  end

end

private
	def permitted_params_about
		params.require(:about).permit(:first_name, :last_name, :description, :email, :address)
		
	end

