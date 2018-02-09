class Api::SongsController < ApplicationController

    def index
        @songs = Artist.find(params[:artist_id]).songs
        render json: @songs
    end

    def show
        @song = Song.find(params[artist_id][:id])
    end

end
