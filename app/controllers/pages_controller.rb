class PagesController < ApplicationController
  def index
  	@about =About.last
    @user =User.last
    @education =@user.educations
  end
  def new
  end
end
