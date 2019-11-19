class IslandsController < ApplicationController
  def edit
    set_island
  end

  def update
    set_island
    @island.update(island_params)
    redirect_to island_path(@island)
  end

  def new
    @island = Island.new
    # authorize @island
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to islands_path(@island)
    else
      render :new
    end
  #   authorize @island
  end
end

private

def set_island
  @island = Island.find(params[:id])
end

def island_params
  params.require(:island).permit(:name, :description, :availability, :price, :photo)
end

# private
# def is_owner?
#   record.user == user || user.admin
# end
