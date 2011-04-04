class TasksController < ApplicationController
  
  def index
    @categories = Category.all
    @category = Category.find(params[:category_id])
    @tasks = @category.tasks
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params[:task])
    
    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_path }
      else
        format.html { render :action => "new"}
      end
    end
  end
  
  def update
    @task = Task.find(params[:id])
    
    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to tasks_path }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  
    respond_to do |format|
      format.html { redirect_to tasks_path }
    end
  end
end
