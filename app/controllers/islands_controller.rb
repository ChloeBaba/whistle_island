class IslandsController < ApplicationController
  def index
    @islands = Island.geocoded

    @markers = @islands.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { island: island })
      }
    end
    if params[:query].present?
      sql_query =
        " islands.name @@ :query \
        OR islands.description @@ :query \
        "
      @islands = Island.where(sql_query, query: "%#{params[:query]}%")
      policy_scope(@islands)
    else
      @islands = policy_scope(Island).order(created_at: :desc)
    end
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
    redirect_to island_path(@island), notice: 'Island was successfully updated.'
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
      redirect_to island_path(@island), notice: 'Island was successfully added.'
    else
      render :new
    end
    authorize @island
  end

  def destroy
    set_island
    @island.destroy
    redirect_to islands_path, notice: 'Island was successfully deleted.'
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
