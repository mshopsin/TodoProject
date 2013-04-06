class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])

    redirect_to project_path
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path
  end

  def create
    @project = Project.new(params[:project])

    if @project.save
      redirect_to project_url(@project)
    else
      render :new
    end
  end
end