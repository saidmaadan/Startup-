class StartuppsController < ApplicationController

	def index
		@startupps = Startupp.all 
	end

	def show
		@startupp = Startupp.find(params[:id])
	end

	def edit
		@startupp = Startupp.find(params[:id])
	end

	def update
		@startupp = Startupp.find(params[:id])
		@startupp.update(startupp_params)
		redirect_to @startupp
	end

	def new
		@startupp = Startupp.new
	end

	def create
		@startupp = Startupp.new(startupp_params)
		@startupp.save
		redirect_to @startupp
	end

	def destroy
		@startupp = Startupp.find(params[:id])
		@startupp.destroy
		redirect_to startupps_url
	end

	private

	def startupp_params
		startupp_params = params.require(:startupp).
       permit(:title, :description, :founders, :founding_date, :tagline, :category, :website_url,
       :tags, :status, :employees, :award, :contact_email, :contact_address,
       :fb_url, :twitter_url, :Linkedin_url, :screenshot)
  end
end
