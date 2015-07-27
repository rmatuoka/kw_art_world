class Admin::ServiceImagesController < ApplicationController
  
  access_control do
      allow :administrator, :all
  end 
  layout "admin"
  
  before_filter :load_service
  
  def index
    @service_images = @service.service_images.all_active
  end

  def show
    @service_image = @service.service_images.find(params[:id])
  end

  def new
    @service_image = @service.service_images.build
  end

  def create
    @service_image = @service.service_images.build(params[:service_image])
    if @service_image.save
      redirect_to [:admin, @service, @service_image], :notice => "Successfully created service images."
    else
      render :action => 'new'
    end
  end

  def edit
    @service_image = @service.service_images.find(params[:id])
  end

  def update
    @service_image= @service.service_images.find(params[:id])
    if @service_image.update_attributes(params[:service_image])
      redirect_to [:admin, @service, @service_image], :notice  => "Successfully updated service images."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @service_image = @service.service_images.find(params[:id])
    @service_image.newdestroy
    redirect_to admin_service_images_url, :notice => "Successfully destroyed service images."
  end
  
  def load_service
    @service=Service.find_by_id(params[:service_id])
  end
  
end
