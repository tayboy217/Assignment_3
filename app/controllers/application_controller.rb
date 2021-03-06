class ApplicationController < ActionController::Base
  before_action :authenticate_user!,except: [:top, :about]

  before_action :configure_permitted_parameters, if: :devise_controller?
 
  def after_sign_in_path_for(resource)
    user_path(id: current_user) # ログイン後に遷移するpathを設定
  end


  def after_log_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
