class ClubsController < ApplicationController
	before_action :authenticate_user!
	before_action :find_club, only: [:show, :edit, :update, :destroy]
	layout 'admin'

	def index
		@clubs = Club.all
	end

	def new
		@club = Club.new
	end

	def create
		@club = Club.new club_params

		if @club.save
			redirect_to @club, notice: "Bravo Rafal. That club was successfully saved!"
		else
			render 'new', notice: "I was unable to save it."
		end
	end

	def show
	end

	def edit
		
	end

	def update
		if @club.update club_params
			redirect_to @club, notice: "Club was successfully saved!"
		else
			render 'edit'
		end
	end

	def destroy
		@club.destroy
		redirect_to clubs_path
	end

	private

	def club_params
		params.require(:club).permit(:name, :abbrev)
	end

	def find_club
		@club = Club.find(params[:id])
	end

end
