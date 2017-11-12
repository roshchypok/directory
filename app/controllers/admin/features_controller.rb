class Admin::FeaturesController < ApplicationController

  layout 'admin'

  def index
    @features = Feature.all
  end

  def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new feature_params
    if @feature.save
      redirect_to admin_features_path, notice: 'Особливість створена успішно'
    else
      flash[:error] = 'Помилка збереження особливості'
      render action: 'new'
    end
  end

  def edit
    @feature = Feature.find params[:id]
  end

  def update
    @feature = Feature.find params[:id]
    if @feature.update_attributes feature_params
      redirect_to admin_features_path, notice: 'Особливість успішно збережена'
    else
      flash[:error] = 'Помилка збереження особливості'
      render action: 'edit'
    end
  end

  def destroy
    redirect_to admin_features_path
  end

  private

  def feature_params
    params.require(:feature).permit!
  end
end
