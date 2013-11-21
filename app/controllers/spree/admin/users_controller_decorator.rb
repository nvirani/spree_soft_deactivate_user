module Spree
  module Admin
    UsersController.class_eval do
      def active_deactive
        user = Spree::User.find(params[:id]) if params[:id]
        if user && user.is_active.present?
          user.update_attributes(is_active: false)
          flash[:notice] = Spree.t(:user_deactivated)
        else
          user.update_attributes(is_active: true)
          flash[:notice] = Spree.t(:user_activated)
        end
        redirect_to admin_users_path 
      end
    end
  end
end