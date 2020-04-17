class PostsController < ApplicationController

  def  index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    authorize @post

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
      end
  end

  def publish
    @post = Post.find(params[:id])
    authorize @post, :update?
    @post.publish!
    redirect_to @post
  end



  def destroy
    #@post = Post.find(params[:id])
    #@post = Post.destroy(params[:id])
    #@post.destroy
    redirect_to posts_path
  end

  def create
    #render plain: [:post]params.inspect
    @post = Post.new(post_params)
    if @post.save
    redirect_to @post
    else
      render 'new'
      end
  end
  private def post_params
    params.require(:post).permit(:title,:body)

  end
end
