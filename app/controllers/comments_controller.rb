class CommentsController < ApplicationController
	before_filter :authenticate_user!

	def create
		@comment = Comment.create(params[:comment])
		redirect_to :back
	end







end
