class IslandsController < ApplicationController
  def index
    @islands = policy_scope(Island).order(created_at: :desc)
  end

  def show
    set_island
    @photos = Photo.where(params[:id])
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

  def new
    @island = Island.new
    authorize @island
  end

  def create
    @island = Island.new(island_params)
    # the user, who creates the island is the owner of that island:
    @island.user = current_user
    if @island.save!
      redirect_to island_path(@island)
    else
      render :new
    end
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
