class PostsController < ApplicationController

  # theme 'theme_name'

  before_action :authenticate_user!

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
    @post.comments.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages
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
