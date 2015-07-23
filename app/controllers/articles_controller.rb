class ArticlesController < ApplicationController 
  layout "lightbox"
  def show
    @article = Article.find_published(params[:id])
  end
end
