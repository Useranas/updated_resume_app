class EducationsController < ApplicationController
def new
	@user = User.last
	@edu = @user.educations.build
end

def create
	@user = User.last
	@user.attributes = education_params
	if @user.save
		redirect_to admins_path
	else
		render new_education_path
	end		
  end

 def edit
   @user =User.last
  end

  def update
   @user =User.last
   @user.attributes = education_params
    if @user.save
      redirect_to admins_path
   else
   	render edit_education_path(@user)
    end
   end 
end

private

def education_params
	params.require(:user).permit(educations_attributes: [:id, :unaversity_name, :subject, :marks, :qualified_degree, :user_id, :_destroy])
end
