class TasksController < ApplicationController

  def new
    @project = Project.find(params[:project_id])
    @task = Task.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = Task.new(tasks_params)
    @task.project = @project
    @task.status = "Pending"
    if @task.save
      redirect_to project_path(@project)
    else

      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @project = Project.find(params[:project_id])
    redirect_to project_path(@project), status: :see_other
  end


  private

  def tasks_params
    params.require(:task).permit(:title, :description, :limit_date, :project_id, :status)
  end
end
