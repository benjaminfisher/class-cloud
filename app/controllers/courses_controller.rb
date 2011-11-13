class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end
  
  def show
    @course = Course.find_by_id(params[:id])
  end
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(params[:course])
    
    if @course.save
      flash[:notice] = "Course successfully created."
      redirect_to '/courses'
    else
      flash[:error] = "Course could not be created."
      redirect_to '/courses/new'
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def delete
  end
end
