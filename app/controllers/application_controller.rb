class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless (current_user.has_role? :Admin)
      redirect_to root_path, notice: "You don't have permission to view this page"
    end
  end
end
