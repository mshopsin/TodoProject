class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(params[:item])

    redirect_to project_url(Project.find(params[:item][:project_id]))
    #redirect_to project_path
  end

  def destroy
    item = Item.find(params[:id])
    proj = Project.find(item[:project_id])
    Item.find(params[:id]).destroy
    redirect_to project_url(proj)
  end

  def create
    @item = Item.new(params[:item])

    if @item.save
      redirect_to project_url(Project.find(params[:item][:project_id]))
    else
      render :new
    end
  end
end