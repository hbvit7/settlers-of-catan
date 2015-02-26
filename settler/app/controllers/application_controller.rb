class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include PlayersHelper
  protect_from_forgery with: :exception

  def login_required
    unless current_player
      render :permission_denied, status: :permission_denied
    end
  end


end
