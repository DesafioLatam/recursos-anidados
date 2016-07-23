class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @post.votes.build(score:1, user: current_user)
    if @post.save
      redirect_to posts_path(anchor:@post.id), notice: "Votaste !! :)"
    else
      redirect_to posts_path(anchor:@post.id), alert: "No pudiste votar :("
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to posts_path
  end
end
