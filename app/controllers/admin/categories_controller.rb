class Admin::CategoriesController < ApplicationController

  layout 'admin'

  before_action :load_section

  def index
    @categories = @section ? @section.categories : Category.all
  end

  def new
    @category = Category.new
    @category.section = @section if @section
  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to @redirect_path, notice: 'Категорія успішно створена'
    else
      flash[:error] = 'Помилка при створенні категорії'
      render action: 'new'
    end
  end

  def edit
    @category = @section ? @section.categories.find(params[:id]) : Category.find(params[:id])
  end

  def update
    @category = @section ? @section.categories.find(params[:id]) : Category.find(params[:id])
    if @category.update_attributes category_params
      redirect_to @redirect_path, notice: 'Категорія успішно збережена'
    else
      flash[:error] = 'Помилка збереження категорії'
      render action: 'edit'
    end
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit!
  end

  def load_section
    @section = Section.find(params[:section_id]) if params[:section_id]
    @redirect_path = @section ? admin_section_categories_path(@section) : admin_categories_path
  end
end
