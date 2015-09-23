class HomesController < ApplicationController
  def index
    @highlights = Highlight.all_published
    @cases= Case.where("highlight is true").all_published("`order`, updated_at")
    @customers = Customer.all_published
  end
  
  def search
    @categories = Category.all_published
    @service_images=Array.new
    if !params[:search_param].blank?
      @services = Service.all(:conditions => ["title like :search or subtitle like :search or description like :search", {:search => "%#{params[:search_param]}%"} ])
      @cases= Case.all(:conditions => ["title like :search or subtitle like :search or description like :search", {:search => "%#{params[:search_param]}%"} ])
      @services.each do |servico|
        @service_images << servico.service_images.all_published("`order`, updated_at").first(3)
      end
    else
      @services = nil
      @caes=nil
    end
  end
  
end
