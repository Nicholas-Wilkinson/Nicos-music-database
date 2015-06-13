class BandController < ApplicationController
	def index
		@band = Band.search(params[:search])
	end
	
	def show
		@band = Band.find(params[:id])
	end	
	
end
