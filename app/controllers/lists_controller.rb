class ListsController < ApplicationController
  def new
 @list = List.new
  end

  def index
   @lists=List.all
  end
  
  def create
     @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :index
    end
    end
  def show
  end

  def edit
  end
   private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
