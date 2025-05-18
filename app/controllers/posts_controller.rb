class PostsController < ApplicationController
  def show
    @posts = Post.find(params[:user_id])
  end
  def new
    @user = User.find(params[:user_id])
    if @user.nil?
      redirect_to users_path, alert: "User not found"
    else
      @post = @user.posts.build
    end
  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.build(post_params)

    if @post.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
