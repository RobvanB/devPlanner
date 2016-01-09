class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    if params[:project]
      @project = Project.find(params[:project])
      @tasks   = @project.tasks
      return
    else
      if params[:current_id]
        @filter_user_id = params[:current_id]       # If user has checked 'My Tasks', then that takes precedence over selected filter
      else
        if params[:filter]
          passed_id = params[:filter]               #:filter contains the user Id selected in the dropdown
          @filter_user_id = passed_id[:selected_id]
        end
      end
    end

    if @filter_user_id
      @tasks = Task.where(user_id: @filter_user_id )
    else
      @tasks = Task.all
    end
  end

  # GET /tasks/1
    def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
    def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:project_id, :user_id, :name)
    end
end
