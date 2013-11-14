Spree::User.class_eval do
	
  def active_for_authentication?
	  super && self.is_active
	end

	# def inactive_message
	#   "Sorry, this account has been deactivated."
	# end
end