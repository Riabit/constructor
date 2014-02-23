module ConstructorCore
  class UsersController < ConstructorCore::ApplicationController
    def profile
      @user = current_user
    end

    def update_password
      @user = current_user

      if params[:user][:password] == params[:user][:password_confirm]
        @user.password = params[:user][:password]

        if @user.save
          redirect_to '/login', :notice => t(:password_changed)
          return
        end
      end

      redirect_to :back, :notice => t(:password_error_confirm)
    end
  end
end