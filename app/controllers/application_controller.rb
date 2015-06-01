class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  private
    def set_locale
      locale = params[:locale] || extract_from_accept_language_header
      I18n.locale = (I18n::available_locales.include? locale.to_sym) ? locale.to_sym : I18n.default_locale
    end

    def extract_from_accept_language_header
      request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    end
end
