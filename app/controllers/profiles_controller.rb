class ProfilesController < ApplicationController

    def show
      @profile = current_user.profile
      @user = current_user
    end

  # def new
  #   @profile = current_user.build_profile
  # end

  # def create
  #   @profile = current_user.build_profile(profile_params)
  #   if @profile.save
  #     redirect_to root_path,
  #     notice: 'アバターを登録しました'
  #   else
  #     render :new
  #   end
  # end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    @profile.assign_attributes(profile_params)
    redirect_to profile_path
  end

  private
  def profile_params
    params.require(:profile).permit(:avatar)
  end

end