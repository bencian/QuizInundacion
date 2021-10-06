class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def menu
    render 'menu'
  end

  def settings
    # Para otra version
  end
end
