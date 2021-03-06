class LinksController < ApplicationController
	
	before_filter :authenticate_user!, except: [:index, :show]
	
	def new
		@link = Link.new
	end

	def create
		@link = Link.new(params[:link], user_id: :current_user)
		if @link.save
			flash[:success] = "Link was successfully created"
			redirect_to root_path
		else
			render :new
		end
	end


	def show
		@link = Link.find(params[:id])
		@comment = Comment.new
	end


	def edit
		@link = Link.find(params[:id])
	end


	def index
		@links = Link.order('created_at DESC').paginate(:page => params[:page], :per_page => 20)

		if params[:page].to_i == 0
			@offset = (@links.per_page) * (params[:page].to_i)
		else
			@offset = (@links.per_page) * (params[:page].to_i - 1)
		end

		if @links.empty?
			flash[:error] = "Threre are no links to view, create new link to proceed"
		end
	end


end
