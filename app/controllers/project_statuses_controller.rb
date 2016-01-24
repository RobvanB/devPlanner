class ProjectStatusesController < ApplicationController
  before_action :set_project_status, only: [:show, :edit, :update, :destroy]

  # GET /project_statuses
  def index
    @project_statuses = ProjectStatus.all
  end

  # GET /project_statuses/1
  def show
  end

  # GET /project_statuses/new
  def new
    @project_status = ProjectStatus.new
  end

  # GET /project_statuses/1/edit
  def edit
  end

  # POST /project_statuses
  def create
    @project_status = ProjectStatus.new(project_status_params)

    respond_to do |format|
      if @project_status.save
        format.html { redirect_to @project_status, notice: 'Project Status was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /project_statuses/1
  def update
    respond_to do |format|
      if @project_status.update(project_status_params)
        format.html { redirect_to @project_status, notice: 'Status was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /project_statuses/1
  def destroy
    respond_to do |format|
      if (@project_status.projects.exists?)
        flash[:error] = "Status cannot be deleted: there are still projects with this status."
        format.html { redirect_to project_statuses_url }
      else
        @project_status.destroy
        format.html { redirect_to project_statuses_url, notice: 'Project Status was successfully destroyed.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_status
      @project_status = ProjectStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_status_params
      params.require(:project_status).permit(:name)
    end
end
