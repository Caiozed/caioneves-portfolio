class HomeController < ApplicationController
  def index
    @projects = Project.all
    @jobs = Job.all
  end
end
