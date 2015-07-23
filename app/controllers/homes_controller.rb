class HomesController < ApplicationController
  before_filter :contact, :except => :search
  before_filter :load_services
  def contact
    @contact = Contact.new
  end
  
  def index
    @categories = Category.all(:conditions => ['published =  true and active = true'], :order => :id, :include => :items)
    @highlights = Highlight.all_published("`order`")
    @articles = Article.paginate(:page => params[:page],:per_page => 4).all_published("`order`")
  end
  
  def search
    if (params[:tag].to_s).first == '#'
      @articles = Article.paginate(:page => params[:page],:per_page => 4).tagged_with(params[:tag].from(1)).all(:conditions => ["published =  true and active = true"])
    else
      @articles = Article.paginate(:page => params[:page],:per_page => 4).search(params[:tag])
    end
  end
end
