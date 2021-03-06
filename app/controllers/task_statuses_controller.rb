class TaskStatusesController < ApplicationController
  before_action :set_task_status, only: [:show, :edit, :update, :destroy]

  # GET /task_statuses
  def index
    @task_statuses = TaskStatus.all
  end

  # GET /task_statuses/1
  def show
  end

  # GET /task_statuses/new
  def new
    @task_status = TaskStatus.new
  end

  # GET /task_statuses/1/edit
  def edit
  end

  # POST /task_statuses
  def create
    @task_status = TaskStatus.new(task_status_params)

    respond_to do |format|
      if @task_status.save
        format.html { redirect_to @task_status, notice: 'Task status was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /task_statuses/1
  def update
    respond_to do |format|
      if @task_status.update(task_status_params)
        format.html { redirect_to @task_status, notice: 'Task status was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /task_statuses/1
  def destroy
    respond_to do |format|
      if (@task_status.projects.exists?)
        flash[:error] = "Status cannot be deleted: there are still tasks with this status."
        format.html { redirect_to task_statuses_url }
      else
        @task_status.destroy
        format.html { redirect_to task_statuses_url, notice: 'Task status was successfully destroyed.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_status
      @task_status = TaskStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_status_params
      params.require(:task_status).permit(:name)
    end
end
