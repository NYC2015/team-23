class ProfilesController < ApplicationController

	def new
		@user = current_user
		@profiles = @user.profiles.new
	end

  	def show
  		@user = current_user.profiles
  	end

  	def edit
  		@user = current_user
  		@profile = @user.profiles.find(params[:id])
  		# @user = Profile.find(params[:id])
  	end

	def create
	# listing = Listing.find(params[:listing_id])
	@user = current_user
	@profile = @user.profiles.new(profile_params)
	@profile.user_id = current_user.user_id

	if @profile.save
	  redirect_to user_profile_path(@user, @profile), notice: "Your profile has been created!"
	else
	  redirect_to user_profile_path(@user, @profile), alert: "Something went wrong!"
	end

	end

   private

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:full_name, :username, :gender, :age, :phone_number, :is_anonymous, :about, :user_id)
    end
end