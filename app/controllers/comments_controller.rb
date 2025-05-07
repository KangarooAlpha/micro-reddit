class CommentsController < ApplicationController
  def show
    @comments = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(author: "...", body: "...")

    redirect_to Post.find(params[:id])
  end
end
