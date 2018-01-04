class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def in_new?
    params[:action] == 'new'
  end

  def in_edit?
    params[:action] == 'edit'
  end

  def in_index?
    params[:action] == 'index'
  end

end
