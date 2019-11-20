class UsersController < ApplicationController
  def show
    @email = current_user.email
    authorize current_user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    current_user.update
    redirect_to dashboard_path
    authorize current_user
  end

  private

  def user_params
    params.require(:current_user).permit(:name, :email, :profile_photo)
  end
end
