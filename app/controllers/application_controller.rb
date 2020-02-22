class ApplicationController < ActionController::Base
    def index
     @users = User.order(id: :desc).page(params[:page]).per(10)
    end
end
