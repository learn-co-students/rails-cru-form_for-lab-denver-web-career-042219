class GenresController < ApplicationController
    def index 
        @genre = Genre.all 
    end 

    def show 
        @genre = Genre.find(params[:id])
    end 

    def new 
        @genre = Genre.new
    end 

    def create
        @genre = Genre.new(allowed_params)
        if @genre.valid?
            @genre.save
            redirect_to genre_path(@genre)
        else
            render :new
        end
    end 

    def edit 
        @genre = Genre.find(params[:id])

    end 

    def update
        @genre = Genre.find(params[:id])
        @genre.update(allowed_params)
        redirect_to genre_path(@genre)
    end 

    private 
    def allowed_params
        params.require(:genre).permit(:name)
    end 


end
