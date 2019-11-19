class IslandsController < ApplicationController
  def index
    @islands = policy_scope(Island)
  end

  def show
    set_island
    authorize @island
  end

  def edit
    set_island
    authorize @island
  end

  def update
    set_island
    @island.update(island_params)
    redirect_to island_path(@island)
    authorize @island
  end

  def destroy
    set_island
    @island.destroy
    redirect_to islands_path
    authorize @island
  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :description, :availability, :price, :photo)
  end
end
