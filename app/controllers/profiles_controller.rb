class ProfilesController < ApplicationController

  # 投稿主のプロフィールに遷移したい
  def show
    @account_name = 'account_name'
  end

  private
  def profile_params
    params.require(:profile).permit(
      :account_name,
      :avatar
    )
  end

end