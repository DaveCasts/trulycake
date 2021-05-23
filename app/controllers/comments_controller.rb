class CommentsController < ApplicationController

	def index
  		@comments = Comment.all
  		@comment = Comment.new
	end

	# def new
	# 	@comment = Comment.new
	# end

	# def show
	#   @comment = Comment.find(params[:id])
	# end

	def create
    	@comment = comments.create(comment_params)
		if @comment.valid?
		    redirect_to root_path
		else
		    render :new, status: :unprocessable_entity
		end
	end

	  private

	  def comment_params
	    params.require(:comment).permit(:name, :productname, :description)
	  end
end
