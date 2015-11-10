class CustomersController < ApplicationController
  before_filter :signed_in_user     # See application_controller
  before_action :set_cust, only: [:show, :edit, :update, :destroy]

  def new
    #cust_params = Hash.new[cust_id: "0"]   # For some reason required for the 'new' action when there is no record yet
    @customer = Customer.new(cust_params)
  end

  def create
    @customer = Customer.new(cust_params)
    if @customer.save
      flash["success"] = "Customer created"
      redirect_to @customer
    else
      render 'new'
    end
  end

  def index
    @customers = Customer.paginate(page: params[:page])
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def destroy
    Customer.find(params[:id]).destroy
    flash[:success] = "Customer destroyed."
    redirect_to customers_url
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_cust
    @cust_id = Customer.find(params[:id])
  end

  def cust_params
    params.require(:customer).permit(:cust_id, :name)
  end
end