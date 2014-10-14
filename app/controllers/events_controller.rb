class EventsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]


	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		if @event.update(event_params)
		  redirect_to @event, notice: "Event successfully updated"
		else
			render :edit
		end
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
		  redirect_to @event, notice: "Event successfully created"
		else
			render :new
		end
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_url, alert: "Event successfully deleted"
	end

	private

	def event_params
		event_params = params.require(:event).permit(:event_title, :description, :location, :address1, :address2,
			:city, :state, :starts, :zip, :start_time, :ends, :ends_time, :organizer_name, :image_logo,
			:about_organizer, :facebook_link, :twitter_link, :linkedin_link, :ticket, :event_type, :event_subject)
	end
end

