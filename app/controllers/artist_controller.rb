class ArtistController < ApplicationController
  def index
    @artists = Artist.all
  end


    def show
      @artist = Artist.find(params[:id])
    end

  def new
    @artist = Artist.new
  end


    def create
      @artist = Artist.new()
    end


  def edit
  end

  def update
  end
end
