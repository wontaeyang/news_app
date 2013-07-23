class CommentsController < ApplicationController
	before_filter :authenticate_user!

	def new

		@parent_link_id = (params[:parent_link_id])
		@parent = Comment.find(params[:parent_id])
		@comment = Comment.new(parent_id: params[:parent_id])
	end

	def create
		@comment = Comment.create(params[:comment])
		redirect_to link_path(@comment.link_id)
	end






end
