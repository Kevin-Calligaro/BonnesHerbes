class RowsController < ApplicationController
  before_action :set_row, only: [:destroy, :index]

  def index
    @rows = Row.all
  end

  def show
    @garden_vegetables = GardenVegetable.all
  end

  def new
    @row = Row.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @row = Row.new(row_params)
    @row.garden = @garden

    if @row.save
      redirect_to garden_path(@garden)
    else
      render "gardens/show"
    end
  end

  def destroy
    @row.destroy
    redirect_to garden_path(@row.garden)
  end

  private

  def row_params
    params.require(:row).permit(:width, :length, :garden_id)
  end

  def set_row
    @row = Row.find(params[:id])
  end
end
