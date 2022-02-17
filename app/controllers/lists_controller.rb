class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    if @list.save
      redirect_to :lists, notice: 'List was succesfully created'
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
