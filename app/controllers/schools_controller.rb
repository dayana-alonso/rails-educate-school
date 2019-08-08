class SchoolsController < ApplicationController

  #Get
  def index
  end

  #Get
  def show
  end
  
  #Get
  def new
    @school = School.new
  end

  #Post
  def create
    @school = School.new(strong_params)
    if @school.save
      redirect_to schools_path, notice: 'successfully created school'
    else
      render 'new'
    end
  end
  
  #Get
  def edit
  end

  #Patch/Put
  def update
  end

  #Detele
  def destroy
  end

# PRIVATE
  def strong_params
    params.require(:school).permit(:name, :address, :active)
  end

end


