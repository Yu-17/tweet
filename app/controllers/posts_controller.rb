class PostsController < ApplicationController
  def index
    @new_post = Post.new
    @posts = Post.all
  end


  def create 
    @new_post = Post.new(post_params)
    if @new_post.save
      redirect_to posts_path(@new_path)
    else
      @posts = Post.all
      render :index
    end
  end

  def new 
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end


  def idex
    @posts = Post.all
  end

  def edit
  end

  

    private
    def post_params
      params.require(:post).permit(:text, :body)
    end

end
