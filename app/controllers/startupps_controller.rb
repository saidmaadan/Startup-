class StartuppsController < ApplicationController

	def index
		@startupps = Startupp.all 
	end

	def show
		@startupp = Startupp.find(params[:id])
	end
end
