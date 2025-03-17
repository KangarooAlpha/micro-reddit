class PostsController < ApplicationController
  def show
    @posts = Post.find_by(params[:users])
  end
end
