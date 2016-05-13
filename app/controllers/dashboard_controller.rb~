class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if current_user.designation != "admin"
      @user = current_user
      render :template => "/dashboard/place_order"
    else
      @orders = Order.all
    end
  end
  
  def place_order
    
  end
  
  def update_order_status
    Order.find(params[:id]).update_attributes :approved => true
    render :json => {"status" => "200"}
  end
  
  def track_order
    @orders = Order.where(:user_id => current_user.id)
  end
  
  def save_order
    #byebug
    order= Order.create save_order_params
    order.file = params["order"][:file]
    order.save!
    redirect_to "/track_order"
  end
  
  def search
    @orders = Order.search_for(params["term"])
    p @orders.count
    render :template => "/dashboard/index"
  end
  
  private

  def save_order_params
    params["order"].permit(:billboard_location, :time, :duration, :file, :user_id)
  end
  #def update_login_status
  #  User.find(params["id"]).update_attributes :login_status => params["status"]
  #  render :json => {"status" => "200"}
  #end
  #
  #def show_users
  #  if current_user.designation != "admin"
  #    @users = [current_user]
  #  else
  #    @users = User.all
  #  end
  #end
  #
  
  #
  #def update_role
  #  User.where(:id => params[:id]).first.update_attributes :designation => "admin"
  #  render :json => {"status" => "200"}
  #end
  #
  #def show_payroll
  #  if current_user.designation == "admin"
  #    @payrolls = Payroll.all
  #  else
  #    @payrolls = current_user.payrolls.all
  #  end
  #  
  #end
  #
  #def create_payroll
  #  @user = User.find(params[:id])
  #end
  #
  #def save_payroll
  #  User.find(params[:uid]).payrolls.create :amount => params[:amount],:bonus => params[:bonus],:salary_month => params[:salary_month],:salary_year => params[:salary_year], :payment_method => params[:payment_method]
  #  render :json => {"status" => "200"}
  #end
  #
  #def update_payment_information
  #  @uid = params[:id]
  #  @pi = Payment.where(:user_id => params[:id]).first
  #end
  #
  #def save_payment_information
  #  pi=Payment.where(:user_id => params[:uid]).first
  #  if pi
  #    pi.update_attributes :bank_branch_code => params[:bank_branch_code], :bank_nam => params[:bank_nam], :bank_address => params[:bank_address], :swift_code => params[:swift_code], :iban => params[:iban], :paypal_email_address => params[:paypal_email_address]
  #  else
  #    Payment.create :user => User.find(params[:uid]), :bank_branch_code => params[:bank_branch_code], :bank_nam => params[:bank_nam], :bank_address => params[:bank_address], :swift_code => params[:swift_code], :iban => params[:iban], :paypal_email_address => params[:paypal_email_address]
  #  end
  #  render :json => {"status" => "200"}
  #end
  #
  #def activate_new_users
  #  @users = User.where(:approved => false)
  #end
  #
  #def activate_user
  #  User.find(params[:id]).update_attributes :approved => true
  #  render :json => {"status" => "200"}
  #end
end
