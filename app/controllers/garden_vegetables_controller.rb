class GardenVegetablesController < ApplicationController

  def index
    @garden_vegetables = GardenVegetable.all
  end

  def new
    @garden_vegetable = GardenVegetable.new
  end

  def create
    @garden_vegetable = GardenVegetable.new(garden_vegetable_params)
    @row = Row.find(params[:row_id])
    @garden_vegetable.row = @row

    if @garden_vegetable.save
      redirect_to garden_path(@row.garden)
    else
      render "gardens/show"
    end
  end

  private

  def garden_vegetable_params
    params.require(:garden_vegetable).permit(:vegetable_id, :row_id)
  end
end
