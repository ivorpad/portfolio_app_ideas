class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment was created."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the comment. Please try again."
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private 

  def comment_params
    params.require(:comment).permit(:body)
  end
end
