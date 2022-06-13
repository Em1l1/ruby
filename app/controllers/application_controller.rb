class ApplicationController < ActionController::Base
  around_action :switch_local

  def switch_locale(&action)
    I18n.with_locale(locale_form_header, &action)
  end

  private

  def locale_from_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end
end
