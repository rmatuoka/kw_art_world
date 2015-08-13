class HomesController < ApplicationController
  def index
    @highlights = Highlight.all_published
    @cases= Case.where("highlight is true").all_published("`order`, updated_at")
  end
end
