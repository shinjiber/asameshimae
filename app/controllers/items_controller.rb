class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      flash[:success] = 'successfully uploaded!'
      redirect_to root_url
    else
      flash[:danger] = 'failure!'
      render root_url
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :price)
  end

end
