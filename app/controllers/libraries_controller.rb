class LibrariesController < ApplicationController
	def index
		@libraries = Library.all
	end

	def new
		@library = Library.new
		@schools = School.all
	end


	def create
  	@library = Library.new(strong_params)
  	if @library.save
  		redirect_to libraries_path, notice: 'successfully created library'
  	else
  		render 'new'
  	end
  end

	def strong_params
		params.require(:library).permit(:name, :school_id )
	end
end