Spree::UserSessionsController.class_eval do

  before_filter :clear_session, only: :new

  def clear_session
  	reset_session
  end

end