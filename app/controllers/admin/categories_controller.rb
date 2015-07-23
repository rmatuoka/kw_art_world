class Admin::CategoriesController < ApplicationController   
  access_control do
      allow :administrator, :all
  end 
  layout "admin"
  def index
    @categories = Category.only_father_active
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to [:admin, @category], :notice => "Successfully created category."
    else
      render :action => 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to [:admin, @category], :notice  => "Successfully updated category."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.newdestroy
    redirect_to admin_categories_url, :notice => "Successfully destroyed category."
  end
end
