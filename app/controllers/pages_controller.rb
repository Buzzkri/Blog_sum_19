class PagesController < ApplicationController
  def index
    @pages = Page.order(:author)
    # render :index
  end

  def show
    @page = Page.find(params[:id])
    # render :show
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
    # params = { id: "6" }
    @page = Page.find(params["id"])
    # render :edit
  end

  def update
    @page = Page.find(params["id"])
    if @page.update(page_params)
      redirect_to pages_path
    else
      render:edit
    end
  end

  def destroy
    # params = { id: "6" 
    Page.find(params["id"]).destroy
    redirct_to pages_path
  end

  private
  def page_params
    params.require(:page).permit(:title, :author, :body) #now when you update you only have to update this one place thenc all the methods.
  end
end


# params.require(:page).permit(:title, :author, :body)