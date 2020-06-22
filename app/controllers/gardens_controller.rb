class GardensController < ApplicationController
  before_action :load_garden, only: [:show, :destroy, :edit]

  def index
    @gardens = Garden.all
  end

  def show
    @row = Row.new
    @rows = Row.all
    @vegetables = Vegetable.all
  end

  def new
    @garden = Garden.new
  end

  def create

    @garden = Garden.new(garden_params)
    @garden.user_id = current_user.id
    @row = Row.create(width: 4, length: 4, garden: @garden)
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
  end

  def destroy
    @garden.destroy
    redirect_to gardens_path
  end

  def edit

  end

  private

  def load_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(:title)
  end
end
