class GardensController < ApplicationController
  before_action :load_garden, only: [:show]

  def show
    @rows = Row.all
    @garden_vegetables = GardenVegetable.all
    @vegetables = Vegetable.all
  end

  private

  def load_garden
    @garden = Garden.find(params[:id])
  end
end
