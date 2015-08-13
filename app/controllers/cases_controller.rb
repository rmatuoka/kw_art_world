class CasesController < ApplicationController
  
  def index
    @cases= Case.all_published("`order`, updated_at")
  end
  
  def show
    @case=Case.find_by_id(params[:id])
  end
end
