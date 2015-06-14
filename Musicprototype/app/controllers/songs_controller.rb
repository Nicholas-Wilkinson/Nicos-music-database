class SongsController < ApplicationController

	def index
		@song = Song.searchband(params[:searchband])
	end
	
	def create
		@band = Band.find(params[:band_id])
		@song = @band.songs.create(song_params)
		redirect_to band_path(@band)
	end
	
private
	def song_params
		params.require(:song).permit(:title, :link)
	end
end
