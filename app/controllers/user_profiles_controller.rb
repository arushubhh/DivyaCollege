class UserProfilesController < InheritedResources::Base

  private

    def user_profile_params
      params.require(:user_profile).permit(:user_id, :first_name, :last_name, :date_of_birth, :gender, :phone, :address, :city_id, :state_id, :country_id)
    end

end
