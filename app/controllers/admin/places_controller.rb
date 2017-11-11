class Admin::PlacesController < ApplicationController

  layout 'admin'

  def index
    @places = Place.all
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new place_params
    if @place.save
      redirect_to admin_places_path, notice: "Місцина успішно створена"
    else
      flash[:error] = 'Помилка збереження місцини'
      render action: 'new'
    end
  end

  def edit
    @place = Place.find params[:id]
  end

  def update
    @place = Place.find params[:id]
    if @place.update_attributes place_params
      redirect_to admin_places_path, notice: 'Місцина успішно змінена'
    else
      flash[:error] = 'Помилка збереження місцини'
      render action: 'edit'
    end
  end

  def destroy
    redirect_to admin_places_path
  end

  private

  def place_params
    params.require(:place).permit!
  end
end
