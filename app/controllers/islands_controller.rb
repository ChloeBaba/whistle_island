class IslandsController < ApplicationController
  def create
  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to islands_path
    else
      render :new
    end
  end
end


private

def is_owner?
  record.user == user || user.admin
