class GenreController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end


  def new
      @genre = Genre.new
  end


  def create
    @genre = Genre..new(genre_params)

    if(@genre.save)
    redirect_to @genre
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
