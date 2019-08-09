class SchoolsController < ApplicationController
  #Get
  def index
    @schools = School.all
  end

  #Get
  def show
    @school = School.find(params[:id])
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
    @school = School.find(params[:id])
  end

  #Patch/Put
  def update
    @school = School.find(params[:id])

    if @school.update(strong_params)
      redirect_to schools_path, notice: 'successfully edited school'
    else
      render 'edit'
    end
  end

  #Detele
  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_path, notice: 'successfully deleted school'
  end


# PRIVATE
  def strong_params
    params.require(:school).permit(:name, :address, :active)
  end

end


