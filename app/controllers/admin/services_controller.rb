class Admin::ServicesController < ApplicationController
  access_control do
      allow :administrator, :all
  end 
  layout "admin"
  def index
    @services = Service.all_active
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
    
    @categorias=Array.new
    @categories=Category.all_published
    @categories.each do |category|
      @categorias << category unless category.children.exists?
      @categorias << category if category.id==5
    end
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      redirect_to [:admin, @service], :notice => "Successfully created service."
    else
      render :action => 'new'
    end
  end

  def edit
    @service = Service.new
    
    @categorias=Array.new
    @categories=Category.all_published
    @categories.each do |category|
      @categorias << category unless category.children.exists?
      @categorias << category if category.id==5
    end
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(params[:service])
      redirect_to [:admin, @service], :notice => "Successfully updated service."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.newdestroy
    redirect_to admin_services_url, :notice => "Successfully destroyed service."
  end
end
