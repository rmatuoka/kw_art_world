class HomesController < ApplicationController
  def index
    @highlights = Highlight.all_published
    
  end
end
