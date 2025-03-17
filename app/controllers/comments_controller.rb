class CommentsController < ApplicationController
  def show
    @comments = Comment.find_by(params[:id])
  end
end
