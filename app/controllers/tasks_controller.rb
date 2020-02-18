class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(user_params)
    @task.save
    redirect_to :task_index
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(user_params)
    redirect_to :task_index
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to :task_index
  end

  def done
    @task = Task.find(params[:id])

    if @task.completed == false
      @task.completed = true
    else
      @task.completed = false
    end
    @task.save

    redirect_to :task_index
  end

  private

  def user_params
    params.require(:task).permit(:title, :details)
  end
end
