class ArtistsController < ApplicationController

 
    def index
        @artist = Artist.all
    end 
    
    def show 
        @artist = Artist.find(params[:id])
    end 

    def new
        @artist = Artist.new  
    end 

    def create 
        @artist = Artist.new(allowed_params)
        if @artist.valid?
            @artist.save 
            redirect_to artist_path(@artist)
        else
            render :new
        end 
    end 

    def edit 
        @artist = Artist.find(params[:id])
    end 

    def update 
        @artist = Artist.find(params[:id])
        @artist.update(allowed_params)
        redirect_to artist_path(@artist)
    end 


    private 

    def allowed_params 
        params.require(:artist).permit(:name, :bio) 
    end 
end
