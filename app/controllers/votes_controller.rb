class VotesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.votes.build(score:1)
    @post.save
    redirect_to posts_path(anchor:@post.id)
  end
end
