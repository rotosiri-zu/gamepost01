class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user
  before_action :set_search

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:nickname])
  end

  def set_current_user
  end

  def set_search
    @search = Game.ransack(params[:q])
    @search_products = @search.result.page(params[:page]).order('created_at DESC')
  end
end
