class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :mailbox, :conversation

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name,:middle_name, :last_name, :phone_number,:country_select, :email, :password, :password_confirmation, :name, :photo) }
      devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name,:middle_name, :last_name, :phone_number,:email, :password, :password_confirmation, :current_password, :name, :photo) }
    end

  private

   def conversation
     @conversation ||= mailbox.conversations.find(params[:id])
   end

     rescue_from ActiveRecord::RecordNotFound do
     flash[:warning] = 'Resource not found.'
     redirect_back_or root_path
   end

  def redirect_back_or(path)
   redirect_to request.referer || path
  end
end
