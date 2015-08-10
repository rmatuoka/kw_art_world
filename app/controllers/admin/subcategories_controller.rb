class Admin::SubcategoriesController < ApplicationController
  access_control do
      allow :administrator, :all
  end 
  layout "admin"
  
  before_filter :load_category
  def index
    @subcategories = @category.children.all_active
  end

  def show
    @subcategory = @category.children.find(params[:id])
  end

  def new
    @subcategory = @category.children.build
  end

  def create
    @subcategory = @category.children.build(params[:category])
    if @subcategory.save
      redirect_to admin_category_subcategory_path(@category, @subcategory), :notice => "Successfully created category."
    else
      render :action => 'new'
    end
  end

  def edit
    @subcategory = @category.children.find(params[:id])
  end

  def update
    @subcategory = @category.children.find(params[:id])
    if @subcategory.update_attributes(params[:category])
      redirect_to admin_category_subcategory_path(@category, @subcategory), :notice  => "Successfully updated category."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @subcategory = @category.children.find(params[:id])
    @subcategory.newdestroy
    redirect_to admin_category_subcategories_url(@category.id), :notice => "Successfully destroyed category."
  end
  
  def load_category
    @category=Category.find_by_id(params[:category_id])
  end
  
  
  
end
