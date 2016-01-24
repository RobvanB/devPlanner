class TaskCommentsController < ApplicationController
  require 'debugger'
  before_action :set_task_comment, only: [:show, :edit, :update, :destroy]

  # GET /task_comments
  def index
    @task_comments = TaskComment.all
  end

  # GET /task_comments/1
  def show
    debugger
  end

  # GET /task_comments/new
  def new
    debugger
    @task_comment = TaskComment.new
  end

  # GET /task_comments/1/edit
  def edit
    debugger
  end

  # POST /task_comments
  def create
    debugger

    @task_comment.user_id = current_user.id

    respond_to do |format|
      if @task_comment.save
        format.html { redirect_to @task_comment, notice: 'Task comment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /task_comments/1
  def update
    respond_to do |format|
      if @task_comment.update(task_comment_params)
        format.html { redirect_to @task_comment, notice: 'Task comment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /task_comments/1
  def destroy
    @task_comment.destroy
    respond_to do |format|
      format.html { redirect_to task_comments_url, notice: 'Task comment was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_comment
      @task_comment = TaskComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_comment_params
      params.require(:task_comment).permit(:comment, :task_id, :user_id)
    end
end
