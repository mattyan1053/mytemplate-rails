class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :load_locale, :set_locale, :set_home_path, :set_sidebar_items

  private

  def load_locale
    I18n.locale = session[:locale] || I18n.default_locale
  end

  def set_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

  def set_home_path
    @home_path = root_path
  end

  def set_sidebar_items
    @sidebar_items = []
  end
end
