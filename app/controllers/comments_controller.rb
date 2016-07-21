class CommentsController < ApplicationController
  before_action :set_comment, except: [:create]

  def index
  end

  def show
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to @post
    else
      redirect_to @post
    end
  end

  def edit
  end

  def update
    @comment.content = comment_params[:content]
    @comment.save
    redirect_to @post
  end

  def destroy
    @comment.destroy
    redirect_to @post
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_comment
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
end
