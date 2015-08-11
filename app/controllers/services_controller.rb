class ServicesController < ApplicationController
  def index
    @category=Category.find_by_id(params[:category])
    @services=@category.services.all_published
  end
  
  def show
    @service=Service.find_by_id(params[:id])
    @category=@service.categories.first
  end
  
end
