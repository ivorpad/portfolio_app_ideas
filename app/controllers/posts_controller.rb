class PostsController < ApplicationController

  # theme 'theme_name'

  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      flash[:error] = "Invalid post attributes"
      render :new
    end
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
