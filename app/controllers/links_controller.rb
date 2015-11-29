class LinksController < ApplicationController
  def index
    @link = Link.new
  end

  def new
  end

  def create
    link = Link.new(link_params)
    if link.save
      redirect_to links_path
    else
      flash[:alert] = "URL invalid. Please try again."
      redirect_to links_path
    end
  end

  def edit
  end

  def update
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
