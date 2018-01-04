class Admin::CategoriesController < ApplicationController

  layout 'admin'

  before_action :load_section
  before_action :create_breadcrumbs
  before_action :create_back_path

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
      redirect_to @back_path, notice: 'Категорія успішно створена'
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
      redirect_to @back_path, notice: 'Категорія успішно збережена'
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
  end

  def create_breadcrumbs
    @breadcrumbs = Breadcrumbs.init('Home', link: admin_root_path)
    if @section
      @breadcrumbs = @breadcrumbs.add'Секції', link: admin_sections_path
      @breadcrumbs = @breadcrumbs.add @section.name, link: admin_section_categories_path(@section)
    end
    @breadcrumbs = @breadcrumbs.add('Нова позиція') if in_new?
    @breadcrumbs = @breadcrumbs.add('Позиція каталогу') if in_edit?
    @breadcrumbs = @breadcrumbs.add('Категорії') if in_index? && !@section
    @breadcrumbs = @breadcrumbs.get
  end

  def create_back_path
    @back_path = @section ? admin_section_categories_path(@section) : admin_categories_path
  end
end
