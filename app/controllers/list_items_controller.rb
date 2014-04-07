class ListItemsController < ApplicationController
  before_action :load_list_item, only: [:show, :edit, :update, :destroy]
  def new
    @list_item = List_Item.new
  end
  def create
    @podcast = Podcast.create(podcast_params)
    @list = List.create(list_params)
    @list_item = List_Item.create(podcast_id: @podcast.id, list_id: @list.id)
    redirect_to user_list_list_items_path(@list.id)
  end

  def show
  end

  def confirm
  end
  private

  def list_params
    params.require(:data).permit(:title, :user_id)
  end

  def podcast_params
    params.require(:data).permit(:name)
  end
  
  def load_favorite
    return @list_item = List_Item.find(params[:id])
  end
end
