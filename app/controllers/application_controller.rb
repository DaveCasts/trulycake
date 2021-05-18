class ApplicationController < ActionController::Base

	def index
  		@comments = Comment.all
	end
end
