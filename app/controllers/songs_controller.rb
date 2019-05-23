class SongsController < ApplicationController
    def index 
        @song = Song.all 
    end 

    def show 
        @song = Song.find(params[:id])
    end 

    def new 
        @song = Song.new
    end 

    def create 
        @song = Song.new(allowed_params)
        if @song.valid?
            @song.save 
            redirect_to song_path(@song)
        else
            render :new
        end  
    end 

    def edit 
        @song = Song.find(params[:id])
    end 
    
    def update 
        @song = Song.find(params[:id])
        @song.update(allowed_params)
        redirect_to song_path(@song)
    end 

    private 
    def allowed_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end 

end
