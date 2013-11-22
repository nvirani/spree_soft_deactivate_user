Spree::User.class_eval do
	
  def active_for_authentication?
	  super && self.is_active
	end

	def inactive_message
	  if !active_for_authentication?
	  	:not_approved
    else 
      super
    end 
	end
end