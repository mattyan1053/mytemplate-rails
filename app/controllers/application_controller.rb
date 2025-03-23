class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_locale, :set_sidebar_items

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_sidebar_items
    @sidebar_items = [
      { name: "Home", url: "/" }
    ]
  end
end
