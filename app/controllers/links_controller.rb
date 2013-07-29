class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      render :show
    else
      render :new
    end

  end

end