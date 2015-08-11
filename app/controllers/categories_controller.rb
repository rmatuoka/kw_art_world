class CategoriesController < ApplicationController
  def index
    @categories=Category.only_father_published
  end

  def show
    @category=Category.find_by_id(params[:id])
    @subcategory=@category.children.all_published
  end
end
