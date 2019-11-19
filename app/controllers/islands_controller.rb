class IslandsController < ApplicationController
  def show
    set_island
    authorize @island
  end

  def index
    @islands = policy_scope(Island)
  end

  def edit
    set_island
  end

  def update
    set_island
    @island.update(island_params)
    redirect_to island_path(@island)
  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :description, :availability, :price, :photo)
  end
end
