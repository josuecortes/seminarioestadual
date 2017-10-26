class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:role, :nome, :email, :password, :password_confirmation,
                         :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip,
                         :current_password, :last_sign_in_ip)

    end

    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:role, :nome, :email, :password, :password_confirmation,
                         :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip,
                         :current_password, :last_sign_in_ip)

    end

  end
end
