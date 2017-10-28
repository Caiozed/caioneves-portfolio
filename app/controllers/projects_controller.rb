class ProjectsController < ApplicationController
  before_action :is_user_signed?
  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
  
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to root_path
    else
      render :edit 
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end
  
  private
  def project_params
    params.require(:project).permit(:name, :description, :image, :git_url, :demo_url)  
  end
  
  def is_user_signed?
     redirect_to root_path unless is_signed?
  end
end
