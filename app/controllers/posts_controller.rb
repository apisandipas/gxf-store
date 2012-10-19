class PostsController < ApplicationController
  
  respond_to :html, :json

  def index
    @posts = Post.published
    respond_with @posts
  end

  def show
    @post = Post.published.find(params[:id])
    respond_with @post
  end


  

end
