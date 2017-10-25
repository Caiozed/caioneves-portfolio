class JobsController < ApplicationController
  before_action :is_user_signed?
  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to root_path
    else
      render :edit 
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to root_path
  end
  
  private
  def job_params
    params.require(:job).permit(:name, :description, :start_date, :end_date)  
  end
  
  def is_user_signed?
    redirect_to root_path unless is_signed?
  end
end
