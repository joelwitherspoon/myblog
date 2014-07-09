class BlogsController < ApplicationController
	def index
		#Shows all blogs
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.new(blog_params)

		if @blog.save
			redirect_to blogs_path, {:notice => "Your blog was created"}
		else
			render "new"
	end


	def edit
	end

	def update
	end

	def show
		#Finds the blog by id field
		@blog = Blog.find(params[:id])
	end

	def destroy
	end
	

  private
  
		def blog_params
	  	#stops fields other than title and body being passed to screen
	  	params.require(:blog).permit(:title, :body)
	  end

end


