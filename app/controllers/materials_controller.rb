class MaterialsController < ApplicationController
  layout "lightbox"
  
  def show
    @material = Material.find(params[:id])
  end
end
