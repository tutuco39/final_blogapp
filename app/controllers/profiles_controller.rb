class ProfilesController < ApplicationController



  private
  def profile_params
    params.require(:profile).permit(
      :account_name,
      :avatar
    )
  end

end