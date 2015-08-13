class CategoriesController < ApplicationController
  def index
    @categories=Category.only_father_published
  end

  def show
    @category=Category.find_by_id(params[:id])
    @subcategories=nil
    @services=nil
    if @category.children.exists?
      @subcategories=@category.children.all_published
    end
    if @category.services.exists?
      @services=@category.services.all_published
    end
  end
end
