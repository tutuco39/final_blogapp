class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    unless @user
      redirect_to root_path, alert: "ユーザーが見つかりません"
      return
    end
    # 誰でも表示可能（current_userでなくてもOK）
    render :show
  end

end