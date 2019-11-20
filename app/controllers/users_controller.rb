class UsersController < ApplicationController
  def show
    @email = current_user.email
    authorize current_user
  end

  def edit
  end

  def update
  end
end
