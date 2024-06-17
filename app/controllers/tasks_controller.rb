class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render 'tasks/index' # Can be omitted if following Rails convention
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render 'tasks/create' # Optional, if following convention, Rails renders 'create'
    else
      render json: { success: false, errors: @task.errors.full_messages }
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    if @task && @task.destroy
      render json: { success: true }
    else
      render json: { success: false }
    end
  end

  def mark_complete
    @task = Task.find_by(id: params[:id])
    if @task && @task.update(completed: true)
      render 'tasks/mark_complete' # Optional, depends on your rendering strategy
    else
      render json: { success: false }
    end
  end

  def mark_active
    @task = Task.find_by(id: params[:id])
    if @task && @task.update(completed: false)
      render 'tasks/update' # Optional, based on how you want to render
    else
      render json: { success: false }
    end
  end

  private

  def task_params
    params.require(:task).permit(:content, :completed)
  end
end

