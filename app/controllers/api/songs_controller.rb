class Api::SongsController < ApplicationController

    def index
        # @songs = Artist.find(params[:artist_id]).songs
        @song = Song.where(artist_id: params[:artist_id])
        render json: @song
    end

    def show
        @song = Song.find(params[:id])
        render json: @song
    end

    def create
        @song = Song.create!(song_params)
        render json: @song
    end

    def update
        @song = Song.find(params[:id])
        @song.update!(song_params)
        render json: @song
    end

    def destroy
        @song = Song.find(params[:id])
        @song.destroy
        render status: :ok
    end


    private
    def song_params
        params.require(:song).permit(:title, :album, :preview_url, :artwork)
    end

end

