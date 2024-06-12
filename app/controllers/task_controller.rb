class TasksController < ApplicationController
  # Existing methods (index, create, etc.)

  private

  def task_params
    params.require(:task).permit(:content, :completed)
  end
end

