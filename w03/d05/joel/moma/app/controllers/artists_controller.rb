class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @painting = Painting.where(artist_id: @artist)
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end 

  def create
    @artist = Artist.create(artist_params)
#    redirect_to @artist

    redirect_to artist_path(@artist)
  end 

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to @artist
  end

  def destroy
    @artist = Artist.delete
  end
   
  private

    def artist_params
      params.require(:artist).permit(
          :first_name,
          :last_name,
          :nationality,
          :date_of_birth,
          :period,
          :image
          )
    end
end

#For show.html.erb later
