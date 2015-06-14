class BandController < ApplicationController
	def index
	if params[:search].present? 
		@foundband = Band.search(params[:search])
	else
		@foundband = Band.all
	end	
	  @songs = Song.search(params[:search])
		if @songs.blank?
			@songlist = 1
		elsif params[:search].blank?
			@songlist = 2
		else
			@songlist = 0
		end
	end
	
	
	def songindex
		@band = Band.all
		@songs = Song.search(params[:search])
	end
	
	def show
		@band = Band.find(params[:id])
		@songs = @band.songs
	end	
	
end
