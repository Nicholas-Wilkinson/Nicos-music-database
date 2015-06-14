class BandController < ApplicationController
	def index
	  @foundband = Band.search(params[:search])
		if @foundband.blank?
			@bandlist = 1
		elsif params[:search].present?
			@bandlist = 0
		else
			@bandlist = 2
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
	
	def new
		@band = Band.new
	end
	
	def create
		@band = Band.new(band_params)
		
		if @band.save
		  redirect_to @band
		else
		  render 'new'
		end
	end
	
	def destroy
	  @band = Band.find(params[:id])
	  @band.destroy
	   
	  redirect_to band_path
	end
	
				
	private
		def band_params
		params.require(:band).permit(:title)
		end
	
end
