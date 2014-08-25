class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_company
  check_authorization :unless => :sessions_controller?
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, alert: t('not_allowed')
  end
  
  private
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def current_company
      @current_company ||= current_user.company if current_user
    end
    
    def sessions_controller?
      params[:controller] == "sessions"
    end
end
