class ServicesController < ApplicationController
  before_filter :load_services  
  def index
    
  end

  def show
    @service = Service.find_by_id(params[:id])
  end
end
