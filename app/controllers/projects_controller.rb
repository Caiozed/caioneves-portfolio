class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to root_path
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
end
