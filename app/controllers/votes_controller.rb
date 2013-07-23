class VotesController < ApplicationController

	def create
		@vote = Vote.create(params[:vote])
		redirect_to link_path(@vote.link_id)
	end

end
