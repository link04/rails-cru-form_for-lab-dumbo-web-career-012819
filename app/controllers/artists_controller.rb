class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :edit, :update]

  def new
    @artist = Artist.new()
  end

  def show
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to @artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def get_artist
    @artist = Artist.find(params[:id])
  end

end
