class SchoolsController <ApplicationController
  def index
  end

  def new
    @school = School.new
  end
end


