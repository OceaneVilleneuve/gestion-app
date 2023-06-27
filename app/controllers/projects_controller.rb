class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @user = current_user
    @users = @project.users
    @tasks = @project.tasks
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(projects_params)
    if @project.save
      redirect_to project_path(@project)
    else

      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path(), status: :see_other
  end


  private

  def projects_params
    params.require(:project).permit(:name, :description)
  end
end
