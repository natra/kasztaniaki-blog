class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	layout 'admin', only: [:new, :edit, :index_admin]

	def index
		@posts = Post.paginate(:page => params[:page], :per_page => 6)
	end

	def index_admin
		@posts = Post.paginate(:page => params[:page], :per_page => 20)
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new post_params

		if @post.save
			redirect_to @post, notice: "Bravo Rafal. Your post was successfully saved!"
		else
			render 'new', notice: "I was unable to save it."
		end
	end

	def show
	end

	def edit
		
	end

	def update
		if @post.update post_params
			redirect_to @post, notice: "Your post was successfully saved!"
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_admin_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :slug)
	end

	def find_post
		@post = Post.friendly.find(params[:id])
	end
end
