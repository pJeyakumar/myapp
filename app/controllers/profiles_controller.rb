class ProfilesController < ApplicationController
  def index
    @all_active_profiles = Profile.all
  end

  def new
  end

  def create
    @new_profile = Profile.new(profile_params)
    respond_to do |format|
      if @new_profile.save
        render :index
      else
        render :new, status: :unprocessable_entity 
      end
    end
  end

  def edit
  end

  def delete
  end
  
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :email, :phone_number)
  end
end
