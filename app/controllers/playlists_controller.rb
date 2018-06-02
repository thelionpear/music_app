class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :update, :edit, :destroy]

  def index
    @playlists = Playlist.all
  end

  def show
  end

  def new
    @playlist = Playlist.new
    render "form" 
  end

  def edit
    render "form"
  end

  def create
    @playlist = Playlist.new(playlist_params)
    
    if @playlist.save
      redirect_to playlists_path
    else
      render :new
    end
  end

  def update
    if @playlist.update(playlist_params)
      redirect_to @playlist
    else
      render :edit
    end
  end

  def destroy
    @playlist.destroy
    redirect_to playlist_path
  end

  private
    
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    def playlist_params 
      params.require(:playlist).permit(:name)
    end
end
