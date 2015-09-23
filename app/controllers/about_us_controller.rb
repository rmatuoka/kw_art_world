class AboutUsController < ApplicationController
  def index
    @about = About.first
  end
end
