class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_current_user
    before_action :set_search

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    end

    def set_current_user
      # @current_user = User.find(params[:id])
    end

    def set_search
      @search = Game.ransack(params[:q]) #ransackメソッド推奨
      @search_articles = @search.result.page(params[:page])
    end
end
