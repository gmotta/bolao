class MatchesController < ApplicationController

	def index
		@matches = Match.find(:all)
	end

	def new
		@match = Match.new
	end
	
	def create
		@match = Match.new(params[:match])
	
		if @match.save
			flash[:success] = "Match was created successfully"
			redirect_to(matches_url)
		else
			redirect_to(matches_url)
		end
	end
	
end
