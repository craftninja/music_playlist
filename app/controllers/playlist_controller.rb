class PlaylistController < ApplicationController

  def index
    @songs = Song.all
  end

  def new

  end

  def create
    song = Song.new
    song.title = params[:title]
    song.url = params[:url]
    song.save
    redirect_to '/playlist'
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.title = params[:title]
    song.url = params[:url]
    song.save
    redirect_to '/playlist'
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    redirect_to '/playlist'
  end

end
