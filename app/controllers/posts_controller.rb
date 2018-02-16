class PostsController < ApplicationController
  def new
   	@blog = Blog.new
   end
 def create
 	blog = Blog.new(blog_params)
 	blog.save
 	redirect_to '/blogs/new'
 end

  private

  def post_params
  	params.require(:blog).permit(:title, :body, :category)
  end

end
