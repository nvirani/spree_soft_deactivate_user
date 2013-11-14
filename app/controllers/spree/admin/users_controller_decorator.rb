module Spree
  module Admin
    UsersController.class_eval do
      def destroy
      	user = Spree::User.find(params[:id])
        if user && user.is_active.present?
          user.update_attributes(is_active: false)
        else
          user.update_attributes(is_active: true)
        end
        flash[:notice] = "User Deactivated"
      end
    end
  end
end