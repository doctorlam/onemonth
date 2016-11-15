class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  include CanCan::ControllerAdditions

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :last_name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :phonenumber, :last_name])

  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "You do not have permission."
  	redirect_to root_url
  end 
end

  def update_params
    if current_user.admin?
      params.require(:proposal).permit(:claim, :user_id, :agreement, :client_name, :client_email, :client_phone1, :client_phone2, :client_phone3, :feedback, :role, :relevance, :course, :subject, :course_id, :semester_id, :time, :title, :abstract, :first_name, :last_name, :organization, :status, :subject)
    else
      params.require(:proposal).permit(:status)
    end
  end
