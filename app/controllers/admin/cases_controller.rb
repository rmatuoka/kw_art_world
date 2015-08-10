class Admin::CasesController < ApplicationController
  access_control do
      allow :administrator, :all
  end 
  layout "admin"
  def index
    @cases = Case.all
  end

  def show
    @case = Case.find(params[:id])
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(params[:case])
    if @case.save
      redirect_to [:admin, @case], :notice => "Successfully created case."
    else
      render :action => 'new'
    end
  end

  def edit
    @case = Case.find(params[:id])
  end

  def update
    @case = Case.find(params[:id])
    if @case.update_attributes(params[:case])
      redirect_to [:admin, @case], :notice  => "Successfully updated case."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @case = Case.find(params[:id])
    @case.destroy
    redirect_to admin_cases_url, :notice => "Successfully destroyed case."
  end
end
