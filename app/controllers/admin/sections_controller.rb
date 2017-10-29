class Admin::SectionsController < ApplicationController

  layout 'admin'

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find params[:id]
    if params[:slug]
      render
    end
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new section_params
    if @section.save
      redirect_to admin_sections_path, notice: 'Секція успішно створена'
    else
      flash[:error] = 'Помилка створення секції'
      render action: 'new'
    end
  end

  def edit
    @section = Section.find params[:id]
  end

  def update
    @section = Section.find params[:id]
    if @section.update_attributes section_params
      redirect_to admin_sections_path, notice: 'Секція успішно змінена'
    else
      flash[:error] = 'Помилка збереження секції'
      render action: 'edit'
    end
  end

  def destroy
    redirect_to admin_sections_path
  end

  private

  def section_params
    params.require(:section).permit!
  end
end
