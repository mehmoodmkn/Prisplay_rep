class TaskAssignerController < ApplicationController
  before_action :authenticate_user!
  def create
    
  end
  
  def show
    if current_user.designation == "admin"
        @tasks = Task.all
    else
      @tasks = current_user.tasks
    end
    
    
  end
  
  def save
    Task.create :name => params[:name], :duration => params[:duration], :starting_date => params[:starting_date], :ending_date => params[:ending_date]
    render :json => {"status" => "200"}
  end
  
  def assign_task
    User.find(params[:uid]).tasks << Task.find(params[:tid])
    render :json => {"status" => "200"}
  end
end
