class StartuppsController < ApplicationController
	# before_action :set_startupp

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
		if @startupp.update(startupp_params)
		  redirect_to @startupp, notice: "Startup successfully updated"
		else
		 	render :edit
		 end
	end

	def new
		@startupp = Startupp.new
	end

	def create
		@startupp = Startupp.new(startupp_params)
		if @startupp.save
		  redirect_to @startupp, notice: "Startup successfully created"
		else
			render :new
		end
	end

	def destroy
		@startupp = Startupp.find(params[:id])
		@startupp.destroy
		redirect_to startupps_url, alert: "Startup successfully deleted"
	end

	private

	def startupp_params
		startupp_params = params.require(:startupp).
       permit(:title, :description, :founders, :founding_date, :tagline, :category, :website_url,
       :tags, :status, :employees, :award, :contact_email, :contact_address,
       :fb_url, :twitter_url, :Linkedin_url, :screenshot)
  end

 #  def set_startupp
	# 	@startupp = Startupp.find(params[:id])
	# end

end
