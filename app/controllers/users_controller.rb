class UsersController < ApplicationController

  def new
    @user = User.new
    @user.build_profile
  end

# def create
#   @user = User.new
#   if @user.save
#     Profile.create
#     sign_in(@user)
#     redirect_to profile_path(@user)
# end

end