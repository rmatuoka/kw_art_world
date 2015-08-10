class CasesController < ApplicationController
  
  def index
  
  end
  
  def show
    @case=Case.find_by_id(params[:id])
  end
end
