class HomeController < ApplicationController
  respond_to :js, :html
  def index
    @projects = Project.page(params[:page]).per(6)
    @jobs = Job.page(params[:page]).per(6)
    
    respond_to do |format|
      format.html 
      format.js
    end
  end
end
