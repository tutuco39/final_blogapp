class ProfilesController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    unless @user
      redirect_to root_path, alert: "ユーザーが見つかりません"
      return
    end
    # 誰でも表示可能（current_userでなくてもOK）
    @profile
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