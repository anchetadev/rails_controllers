class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    render layout: 'three-column'
  
  end
end
