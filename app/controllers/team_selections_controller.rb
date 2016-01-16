class TeamSelectionsController < ApplicationController
	before_action :authenticate_user!
	before_action :find_team_selection, only: [:show, :edit, :update, :destroy]
	layout 'admin'

	def index
		@team_selections = TeamSelection.all
	end

	def new
		@team_selection = TeamSelection.new
	end

	def create
		@team_selection = TeamSelection.new team_selection_params

		if @team_selection.save
			redirect_to @team_selection, notice: "Bravo Rafal. That team selection was successfully saved!"
		else
			render 'new', notice: "I was unable to save it."
		end
	end

	def show
	end

	def edit
		
	end

	def update
		if @team_selection.update team_selection_params
			redirect_to @team_selection, notice: "Team selection was successfully saved!"
		else
			render 'edit'
		end
	end

	def destroy
		@team_selection.destroy
		redirect_to team_selections_path
	end

	private

	def team_selection_params
		params.require(:team_selection).permit(:name, :position, :club_id)
	end

	def find_team_selection
		@team_selection = TeamSelection.find(params[:id])
	end

end
