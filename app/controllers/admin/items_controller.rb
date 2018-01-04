class Admin::ItemsController < ApplicationController

  layout 'admin'

  before_action :create_breadcrumbs
  before_action :create_back_link

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new item_params
    if @item.save
      redirect_to admin_items_path, notice: 'Позиція успішно створена'
    else
      flash[:error] = 'Помилка створення позиції'
      render 'new'
    end
  end

  def edit
    @item = Item.find params[:id]
  end

  def update
    @item = Item.find params[:id]
    if @item.update_attributes item_params
      redirect_to admin_items_path, notice: 'Позиція успішно збережена'
    else
      flash[:error] = 'Помилка збереження позиції'
    end
  end

  def destroy
    redirect_to admin_items_path
  end

  private

  def item_params
    params.require(:item).permit!#(
      #:category_id, :name, :haslo, :description, :address, :seo,
      #:name_ru, :haslo_ru, :description_ru, :address_ru, :seo_ru,
      #:name_en, :haslo_en, :description_en, :address_en, :seo_en,
      #:phone, :web, :lat, :lng, :avatar, :slug, :active
    #)
  end

  def create_breadcrumbs
    @breadcrumbs = Breadcrumbs.init('Home').add('Каталог', active: true).get
  end

  def create_back_link
    @back_link = admin_items_path
  end
end
