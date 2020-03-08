class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    # deviseを利用するためのコード(deviseコントローラは直接修正できないため)
    before_action :configure_permitted_parameters, if: :devise_controller?
    # if :devise_controller → devise_controllerが使われる場合に
    
    protected
    def configure_permitted_parameters
        # 第1引数時に第2引数のデータの操作を許可？
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
