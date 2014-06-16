class ClientsController < ApplicationController
  
  def index
    @clients = Client.all
    render :json => @clients
  end
  
  def new
    @client = Client.new(params[:client])
  end
  
  def create
    @client = Client.new(params[:client])
    if @client.save
      flash[:notice] = "client created successfully."
    else
      flash[:notice] = "Error occur while creating client."
    end
    redirect_to root_path
  end
  
  
end
