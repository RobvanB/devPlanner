class TasksController < ApplicationController
  require 'debugger'
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    #debugger
    if params[:project] && params[:project] != ''   # We are coming into the task form from a project, so only show tasks for project
      from_project_filter = params[:project]
    end

    if params[:current_id_filter]
      local_user_filter = params[:current_id_filter]      # User has checked 'My Tasks', this takes precedence over other selected user filter
    end

    # If no current user filter, see if there is an 'other' user filter
    if local_user_filter.nil? && params[:user_filter]
      if params[:user_filter][:selected_id] != ""
        local_user_filter = params[:user_filter][:selected_id]        #Nested hash
      end
    end

    # Set the correct project filter
    if from_project_filter.nil? && params[:project_filter]
      if params[:project_filter][:selected_id] != ""
        local_project_filter = params[:project_filter][:selected_id]  #Nested hash
      end
    end

    if !from_project_filter.nil?
      project = Project.find(from_project_filter)
      @tasks   = project.tasks
      @tasks_for = "Tasks for project '#{ project.id} - #{ project.proj_name } '"
    end

    if !local_user_filter.nil? && !local_project_filter.nil?
      user = User.find(local_user_filter)
      project = Project.find(local_project_filter)
      @tasks = Task.where(user_id: local_user_filter, project_id: local_project_filter)
      @tasks_for = "Tasks for user '#{ user.id } - #{ user.name }' and project '#{ project.id } - #{ project.proj_name }' "
    else
      if !local_user_filter.nil?
        user = User.find(local_user_filter)
        @tasks = Task.where(user_id: local_user_filter)
        @tasks_for = "Tasks for user '#{ user.id } - #{ user.name }' "
      else if !local_project_filter.nil?
             project = Project.find(local_project_filter)
             @tasks = Task.where( project_id: local_project_filter)
             @tasks_for = "Tasks for  project '#{ project.id } - #{ project.proj_name }' "
           else
            @tasks = Task.all
           end
        end
    end
  end

  # GET /tasks/1
  def show
      #@task_comments = TaskComment.where(task_id: @task.id)  # List all comments for the current task
  end

  # GET /tasks/new
  def new
    @task = Task.new
    #@task_comment =TaskComment.new
  end

  # GET /tasks/1/edit
  def edit
    #@task_comment = TaskComment.new
    #@task_comment_new = TaskComment.new(:task => @task) #Create a new comment
    #@task_comments = TaskComment.where(task_id: @task.id)  # List all comments for the current task
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

  # Update the task and create a comment at the same time
  def update_w_comment
    begin
    Task.transaction do
      params =    task_params.except(:task_comment)
        @task = Task.find(params[:id])

        @task.update(params)
        if @task.errors.any?
          #@errors = @task.errors
          raise ActiveRecord::Rollback
        end
        #debugger
        task_comment = TaskComment.create(task_params[:task_comment])
        if task_comment.errors.any?
          #task_comment.errors.messages.each do |msg|
          #  msg.each do |field, error|
          #    @task.errors.add(field, error)
          #  end
          #end
          @errors = task_comment.errors
          raise ActiveRecord::Rollback
        end
      end
    end
    render :edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:id, :project_id, :user_id, :name, :task_status_id, :new_task_comment['task_comment'] => [:id, :comment, :task_id, :user_id ] )
    end
end

