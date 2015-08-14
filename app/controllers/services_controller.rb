class ServicesController < ApplicationController
  def index
    @category=Category.find_by_id(params[:category])
    @services=@category.services.all_published
    @service_images=Array.new
    @services.each do |servico|
      @service_images << servico.service_images.all_published("`order`, updated_at").first(3)
    end
  end
  
  def show
    @service=Service.find_by_id(params[:id])
    @category=@service.categories.first
    @service_images=@service.service_images.all_published("`order`, updated_at") if @service.service_images.exists?
  end
end
