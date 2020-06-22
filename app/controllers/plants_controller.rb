class PlantsController < ApplicationController
  def show
    @rows = Row.all
    @garden_vegetables = GardenVegetable.all
    @vegetables = Vegetable.all
    @plants = Plant.all
  end
end
