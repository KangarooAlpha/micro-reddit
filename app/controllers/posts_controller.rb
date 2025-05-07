class PostsController < ApplicationController
  def show
    @posts = Post.belongs_to(params[:id])
  end
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: "...", body: "...")

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end
end
