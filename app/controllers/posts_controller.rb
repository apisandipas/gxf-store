class PostsController < ApplicationController
  
  respond_to :html, :json

  def index
    @posts = Post.pub.paginate( page: params[:page], per_page: 1)
    respond_with @posts

  end

  def show
    @post = Post.pub.find_by_permalink!(params[:id])
    respond_with @post
  end


  

end
