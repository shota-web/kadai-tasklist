class ApplicationController < ActionController::Base
    def index
     @users = User.order(id: :desc).page(params[:page]).per(10)
    end
    
    include SessionsHelper
    
    private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
