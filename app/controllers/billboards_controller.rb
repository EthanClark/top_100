class BillboardsController < ApplicationController
  def index
    @billboard = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def new
    @billboard = Billboard.new
  end

  def edit
    @billboard = Billboard.find params[:id])
  end
  def update
    @billboard = Billboard.find(params[:id])
    if @billboard.update(billboard_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def destroy
    @billboard = Billboard.find(params[:id])
    @billboard.destroy
    redirect_to root_path
  end
  private 
    def billboard_params
      params.require(:billboard).permit(:name)
    end
end
