class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @email = @user.email
    authorize @user
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to edit_user_path, notice: 'Profile was successfully updated.'
    authorize current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile_photo)
  end
end
